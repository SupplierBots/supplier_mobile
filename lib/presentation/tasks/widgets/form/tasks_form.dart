import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/tasks/tasks_bloc.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/bloc/tasks_editor_bloc.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown.dart';
import 'package:supplier_mobile/presentation/core/form/form_switch.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/choosing_color_widget.dart';

class TasksForm extends HookWidget {
  const TasksForm({
    Key key,
    @required this.formKey,
  }) : super(key: key);
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    final initialValues = useState<Map<String, dynamic>>();

    useMemoized(() {
      final uidOption = context.read<TasksEditorBloc>().state.editedTaskUid;
      final tasks = context.read<TasksBloc>().state.tasks;

      initialValues.value = uidOption.fold(
        () => null,
        (uid) => tasks[uid].toJson(),
      );
    });

    return FormBuilder(
      key: formKey,
      initialValue: initialValues.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Header(text: 'Product details', underlineWidth: 220),
          const SizedBox(
            height: kPrimaryElementsSpacing,
          ),
          FormDropdown(
            name: 'profileName',
            items: context.read<ProfilesBloc>().state.profiles.keys.toList(),
            placeholder: 'Profile',
          ),
          const SizedBox(
            height: kPrimaryElementsSpacing,
          ),
          const FormDropdown(
            name: 'product',
            items: [
              'Swag',
              'Swag2',
              'Swag3',
            ],
            placeholder: 'Product',
          ),
          const SizedBox(height: kPrimaryElementsSpacing),
          const ColorChoosing(),
          const SizedBox(
            height: kPrimaryElementsSpacing,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(right: kPrimaryElementsSpacing),
                  // child: FormTextField(
                  //   name: 'enter colors',
                  //   placeholder: 'Enter colors',
                  // ),
                ),
              ),
              const SecondaryButton(
                text: 'Add',
                width: 85,
                height: 50,
                onTap: null,
              ),
            ],
          ),
          const SizedBox(height: kPrimaryElementsSpacing),
          const FormDropdown(
            name: 'size',
            items: [
              'Small',
              'Medium',
              'Large',
              'XLarge',
            ],
            placeholder: 'Size',
          ),
          const SizedBox(height: kPrimaryElementsSpacing),
          Row(
            children: [
              const FormSwitch(
                name: 'anyColor',
                label: 'Any color',
              ),
              const SizedBox(width: 70),
              const FormSwitch(
                name: 'anySize',
                label: 'Any size',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
