import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';

class EditHeader extends StatelessWidget {
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
  final void Function() confirmAction;

  @override
  Widget build(BuildContext context) {
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
                  style: TextStyle(
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
              onTap: undoAction,
              child: const Icon(
                Icons.undo,
                color: kLightPurple,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 10),
              child: GestureDetector(
                onTap: confirmAction,
                child: const Icon(
                  Icons.save,
                  color: kLightPurple,
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
