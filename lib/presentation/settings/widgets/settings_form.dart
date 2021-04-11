import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/settings/settings_cubit.dart';
import 'package:supplier_mobile/domain/settings/settings.dart';
import 'package:supplier_mobile/presentation/core/form/form_switch.dart';
import 'package:supplier_mobile/presentation/core/header.dart';

class SettingsForm extends HookWidget {
  const SettingsForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> initialValues = useMemoized(() {
      return context.read<SettingsCubit>().state.settings.toJson();
    });

    final GlobalKey<FormBuilderState> formKey =
        useMemoized(() => GlobalKey<FormBuilderState>());

    void _updateSettings() {
      if (!formKey.currentState.saveAndValidate()) return;
      final currentSettings = Settings.fromJson(formKey.currentState.value);
      context.read<SettingsCubit>().update(settings: currentSettings);
    }

    return FormBuilder(
      key: formKey,
      initialValue: initialValues,
      onChanged: _updateSettings,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Header(text: 'Personalization', underlineWidth: 220),
          SizedBox(height: 15),
          FormSwitch(name: 'enableVibrations', label: 'Vibrations'),
          SizedBox(height: 15),
          FormSwitch(name: 'enableWarnings', label: 'Warnings'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
