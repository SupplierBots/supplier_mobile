import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

class ProfileWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProfilesProvider state =
        Provider.of<ProfilesProvider>(context, listen: false);

    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 3,
        sigmaY: 3,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: 0.85,
          child: Container(
            margin: EdgeInsets.only(top: 50),
            height: 310,
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(1),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kTetiaryBackground,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Create new profile',
                          style: TextStyle(color: kLightPurple, fontSize: 20),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: state.closeModal,
                          child: const Icon(
                            Icons.close,
                            size: 35,
                            color: kLightPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: FormBuilder(
                      autovalidateMode: AutovalidateMode.disabled,
                      key: formKey,
                      child: FormTextField(
                        name: 'name',
                        placeholder: 'Profile name',
                        validator: (String value) {
                          if (!state.profiles.containsKey(value)) return null;
                          return 'Already exists';
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Text(
                      'Profile name is only for your usage to easily differentiate this set of data from the others.',
                      style: TextStyle(
                        color: kDarkGrey,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 7),
                    child: Row(
                      children: [
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            if (!formKey.currentState.saveAndValidate()) return;

                            state.setEditedProfile(
                                formKey.currentState.value['name'] as String);
                            state.closeModal();
                          },
                          child: const Icon(
                            Icons.done,
                            size: 30,
                            color: kLightPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
