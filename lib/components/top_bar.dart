import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class TopBar extends PreferredSize {
  TopBar({
    @required this.profileName,
    @required this.isEditing,
  });

  final String profileName;
  final bool isEditing;

  @override
  Size get preferredSize => Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: kSecondaryBackground,
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  CustomIcons.logo,
                  color: Colors.white,
                  size: 45,
                ),
              ),
              shaderCallback: (Rect bounds) {
                return kPrimaryGradient.createShader(bounds);
              },
            ),
            isEditing
                ? Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Profiles',
                            style: TextStyle(
                                color: kLightPurple,
                                fontSize: 20,
                                letterSpacing: 1.1),
                          ),
                          Text(
                            'Editing: $profileName',
                            style: TextStyle(
                                color: kLightPurple,
                                fontSize: 16,
                                letterSpacing: 1.1),
                          ),
                        ],
                      ),
                    ],
                  )
                : Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'Profiles',
                      style: TextStyle(
                          color: kLightPurple,
                          fontSize: 25,
                          letterSpacing: 1.2),
                    ),
                  ),
            Spacer(),
            Icon(
              Icons.undo,
              color: kLightPurple,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Icon(
                Icons.save,
                color: kLightPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
