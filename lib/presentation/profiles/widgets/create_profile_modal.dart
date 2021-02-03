import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

class CreateProfileModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            margin: const EdgeInsets.only(top: 50),
            height: 305,
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                        const Header(
                          text: 'Create new profile',
                          underlineWidth: 220,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormBuilder(
                    autovalidateMode: AutovalidateMode.disabled,
                    key: formKey,
                    child: FormTextField(
                      name: 'name',
                      placeholder: 'Profile name',
                      validator: (String value) {
                        if (!context
                            .read<ProfilesBloc>()
                            .state
                            .profiles
                            .containsKey(value)) return null;
                        return 'Already exists';
                      },
                    ),
                  ),
                  const SizedBox(height: kPrimaryElementsSpacing),
                  const Text(
                    'Profile name is only for your usage to easily differentiate this set of data from the others.',
                    style: TextStyle(
                      color: kDarkGrey,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            size: 30,
                            color: kDarkGrey,
                          ),
                          onPressed: () {
                            context
                                .read<ProfilesEditorBloc>()
                                .add(const ClosedModal());
                          },
                        ),
                        const SizedBox(width: 15),
                        IconButton(
                          icon: const Icon(
                            Icons.done,
                            size: 30,
                            color: kLightPurple,
                          ),
                          onPressed: () {
                            if (!formKey.currentState.saveAndValidate()) return;

                            final name =
                                formKey.currentState.value['name'] as String;

                            context
                                .read<ProfilesEditorBloc>()
                                .add(StartedEditing(name));
                          },
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
