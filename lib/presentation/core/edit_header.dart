import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/core/header.dart';

class EditHeader extends HookWidget {
  const EditHeader({
    @required this.primaryText,
    @required this.secondaryText,
    @required this.isEditing,
    @required this.undoAction,
    @required this.confirmAction,
  });

  final String primaryText;
  final String secondaryText;
  final bool isEditing;
  final void Function() undoAction;
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

    Future<void> _vibrate() async {
      HapticFeedback.heavyImpact();
      sleep(const Duration(milliseconds: 100));
      HapticFeedback.heavyImpact();
    }

    Future<void> _showUndoDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding:
                const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            title: const Header(
              text: 'Are you sure?',
              underlineWidth: 170,
            ),
            content: const Text('Unsaved changes will be lost.',
                style: TextStyle(
                  color: kLighGrey,
                )),
            backgroundColor: kSecondaryBackground,
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.close,
                  size: 30,
                  color: kDarkGrey,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(
                  Icons.done,
                  size: 30,
                  color: kLightPurple,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  undoAction();
                },
              ),
            ],
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
            GestureDetector(
              onTap: _showUndoDialog,
              child: const Icon(
                Icons.undo,
                color: kLightPurple,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 10),
              child: GestureDetector(
                onTap: () {
                  if (confirmAction()) return;
                  _controller.forward().whenComplete(() => _controller.reset());
                  _vibrate();
                },
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (BuildContext context, Widget child) {
                    return Transform.translate(
                      offset: Offset(15 * _shake(_controller.value), 0),
                      child: child,
                    );
                  },
                  child: Icon(
                    Icons.save,
                    color: _colorAnimation,
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
