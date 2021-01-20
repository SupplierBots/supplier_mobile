import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/typography.dart';

class ProfilesTopHeader extends StatelessWidget {
  const ProfilesTopHeader({
    @required this.primaryText,
    @required this.isEditing,
    @required this.undoAction,
    @required this.confirmAction,
  });

  final String primaryText;
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
                const Text(
                  'Profiles',
                  style: TextStyle(
                      color: kLightPurple, fontSize: 20, letterSpacing: 1.1),
                ),
                Text(
                  primaryText,
                  style: const TextStyle(
                      color: kLightPurple, fontSize: 16, letterSpacing: 1.1),
                ),
              ],
            )
          else
            Text(
              'Profiles',
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
