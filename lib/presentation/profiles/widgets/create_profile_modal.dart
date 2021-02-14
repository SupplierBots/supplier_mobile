import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';

class CreateProfileModal extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> formKey =
        useMemoized(() => GlobalKey<FormBuilderState>());

    void _submitProfileName() {
      FocusManager.instance.primaryFocus.unfocus();

      if (!formKey.currentState.saveAndValidate()) {
        Vibrate.error();
        return;
      }
      Vibrate.tap();
      final name = formKey.currentState.value['name'] as String;
      context.read<ProfilesEditorBloc>().add(StartedEditing(name));
      Navigator.of(context).pop();
    }

    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 40),
      title: const Header(
        text: 'Create new profile',
        underlineWidth: 220,
      ),
      titlePadding: const EdgeInsets.only(top: 30, left: 30),
      actionsPadding: const EdgeInsets.only(right: 20, bottom: 10),
      contentPadding: const EdgeInsets.only(left: 30, right: 30, top: 15),
      backgroundColor: kTertiaryBackground,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FormBuilder(
            autovalidateMode: AutovalidateMode.disabled,
            key: formKey,
            child: FormTextField(
              name: 'name',
              placeholder: 'Profile name',
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(context, 15,
                    errorText: 'Too long'),
                (String value) {
                  if (!context
                      .read<ProfilesCubit>()
                      .state
                      .profiles
                      .containsKey(value)) return null;
                  return 'Already exists';
                }
              ]),
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
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.close,
            size: 30,
            color: kDarkGrey,
          ),
          onPressed: () {
            Vibrate.tap();
            Navigator.of(context).pop();
          },
        ),
        const SizedBox(width: 15),
        IconButton(
          icon: const Icon(
            Icons.done,
            size: 30,
            color: kLightPurple,
          ),
          onPressed: _submitProfileName,
        ),
      ],
    );
  }
}
