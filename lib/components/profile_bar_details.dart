import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/typography.dart';

class ProfileBarDetails extends StatelessWidget {
  const ProfileBarDetails({
    @required this.profileName,
    @required this.isEditing,
  });

  final String profileName;
  final bool isEditing;

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
                  'Editing: $profileName',
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
          const Icon(
            Icons.undo,
            color: kLightPurple,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.save,
              color: kLightPurple,
            ),
          ),
        ],
      ),
    );
  }
}
