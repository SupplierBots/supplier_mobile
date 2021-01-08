import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/my_flutter_app_icons.dart';

class TopBar extends PreferredSize {
  TopBar({
    @required this.profileName,
    @required this.isEditing,
  });

  final String profileName;
  final bool isEditing;

  @override
  Size get preferredSize => Size.fromHeight(110);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: kSecondaryBackground,
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ShaderMask(
                child: Icon(
                  MyFlutterApp.logo,
                  color: Colors.white,
                  size: 50,
                ),
                shaderCallback: (Rect bounds) {
                  return kPrimaryGradient.createShader(bounds);
                },
              ),
            ),
            isEditing
                ? Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
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
                    ),
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
