import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/settings/settings_cubit.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/core/styled_alert_dialog.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';

class EditHeader extends HookWidget {
  const EditHeader({
    @required this.primaryText,
    @required this.secondaryText,
    @required this.isEditing,
    @required this.cancelAction,
    @required this.confirmAction,
  });

  final String primaryText;
  final String secondaryText;
  final bool isEditing;

  /// `Tuple2<showDialog, onConfirm>`
  ///  If showDialog is false, onConfirm will be called immedietely.
  final Tuple2<bool, VoidCallback> Function() cancelAction;
  final bool Function() confirmAction;

  @override
  Widget build(BuildContext context) {
    final _controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );

    final _colorAnimation = useAnimation(ColorTween(
      begin: kLightPurple,
      end: kDarkRed,
    ).animate(_controller));

    double _shake(double animation) =>
        2 * (0.5 - (0.5 - Curves.bounceOut.transform(animation)).abs());

    Future<void> _cancel() async {
      final result = cancelAction();
      if (!result.value1 ||
          !context.read<SettingsCubit>().state.settings.enableWarnings) {
        result.value2();
        return;
      }
      getIt<Vibrate>().heavyImpactTap(context);
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StyledAlertDialog(
            content: 'Unsaved changes will be lost.',
            onConfirm: result.value2,
          );
        },
      );
    }

    return Expanded(
      child: Row(
        children: [
          if (isEditing)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  primaryText,
                  style: const TextStyle(
                      color: kLightPurple, fontSize: 20, letterSpacing: 1.1),
                ),
                Text(
                  secondaryText,
                  style: const TextStyle(
                      color: kLightPurple, fontSize: 16, letterSpacing: 1.1),
                ),
              ],
            )
          else
            Text(
              primaryText,
              style: kHeader,
            ),
          const Spacer(),
          if (isEditing) ...<Widget>[
            IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              onPressed: _cancel,
              icon: const Icon(
                Icons.undo,
                color: kLightPurple,
              ),
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget child) {
                return Transform.translate(
                  offset: Offset(15 * _shake(_controller.value), 0),
                  child: child,
                );
              },
              child: IconButton(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                onPressed: () {
                  if (confirmAction()) {
                    return;
                  }
                  _controller.forward().whenComplete(() => _controller.reset());
                  getIt<Vibrate>().error(context);
                },
                icon: Icon(
                  Icons.save,
                  color: _colorAnimation,
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
