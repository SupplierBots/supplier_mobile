import 'package:flutter/material.dart';
import 'package:supplier_mobile/application/dashboard/dashboard_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class VersionID extends StatelessWidget {
  const VersionID({
    Key key,
    @required this.state,
  }) : super(key: key);

  final DashboardState state;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            child: GradientWidget(
              child: Icon(
                CustomIcons.plus,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
          const WidgetSpan(
              child: SizedBox(
            width: 7,
          )),
          TextSpan(
            text: 'Version: ${state.generalInfo.version}',
            style: const TextStyle(fontSize: 16, color: kLightPurple),
          ),
        ],
      ),
    );
  }
}
