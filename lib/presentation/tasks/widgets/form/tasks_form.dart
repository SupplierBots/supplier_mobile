import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/remote/remote_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_editor/tasks_editor_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown.dart';
import 'package:supplier_mobile/presentation/core/form/form_switch.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/form/form_multi_select_field.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/form/tasks_form_dropdown_values.dart';

class TasksForm extends HookWidget {
  const TasksForm({
    Key key,
    @required this.formKey,
  }) : super(key: key);
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    final initialValues = useState<Map<String, dynamic>>();

    final isAnySizeDropdownVisible = useState(false);

    final products = useMemoized(() {
      return context.read<RemoteCubit>().state.products.keys.toList();
    });

    useMemoized(() {
      final uidOption = context.read<TasksEditorCubit>().state.editedTaskUid;
      final tasks = context.read<TasksCubit>().state.tasks;

      initialValues.value = uidOption.fold(
        () => null,
        (uid) {
          isAnySizeDropdownVisible.value = tasks[uid].anySize;
          return tasks[uid].toJson();
        },
      );
    });

    return FormBuilder(
      key: formKey,
      initialValue: initialValues.value,
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Header(text: 'Product details', underlineWidth: 220),
          const SizedBox(
            height: 15,
          ),
          FormDropdown(
            name: 'profileName',
            items: context.read<ProfilesCubit>().state.profiles.keys.toList(),
            placeholder: 'Profile',
          ),
          const SizedBox(
            height: kPrimaryElementsSpacing,
          ),
          FormDropdown(
            name: 'product',
            items: products,
            placeholder: 'Product',
          ),
          const SizedBox(height: kPrimaryElementsSpacing),
          FormMultiSelectField(
            name: 'colors',
            title: 'Colors',
            placeholder: 'Enter color',
            formKey: formKey,
          ),
          const SizedBox(height: kPrimaryElementsSpacing),
          const FormDropdown(
            name: 'size',
            items: sizes,
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
              FormSwitch(
                name: 'anySize',
                label: 'Any size',
                onChange: (bool value) {
                  isAnySizeDropdownVisible.value = value;
                },
              ),
            ],
          ),
          const SizedBox(height: kPrimaryElementsSpacing),
          if (isAnySizeDropdownVisible.value)
            FormDropdown(
              name: 'anySizeOption',
              items: anySizeOptions,
              placeholder: 'If selected size is not available choose',
              isRequired: isAnySizeDropdownVisible.value,
            ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
