import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/settings/settings_cubit.dart';
import 'package:supplier_mobile/domain/webhooks/webhook_config.dart';
import 'package:supplier_mobile/domain/webhooks/webhooks_repository.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/form/form_switch.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/header.dart';

class WebhookForm extends HookWidget {
  const WebhookForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> initialValues = useMemoized(() {
      return context.read<SettingsCubit>().state.webhookConfig.toJson();
    });

    final GlobalKey<FormBuilderState> formKey =
        useMemoized(() => GlobalKey<FormBuilderState>());

    void _updateSettings() {
      if (!formKey.currentState.saveAndValidate()) return;
      final config = WebhookConfig.fromJson(formKey.currentState.value);
      context.read<SettingsCubit>().setWebhookConfig(config: config);
    }

    return FormBuilder(
      key: formKey,
      initialValue: initialValues,
      onChanged: _updateSettings,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(text: 'Discord webhook', underlineWidth: 210),
          const SizedBox(height: 15),
          FormTextField(
            name: 'url',
            placeholder: 'Webhook URL',
            type: TextInputType.url,
            validator: (String value) {
              if (value.isNotEmpty && !webhookUrlRegex.hasMatch(value)) {
                return 'Invalid URL';
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          const FormSwitch(name: 'successOnly', label: 'Success Only'),
          const SizedBox(height: 15),
          SecondaryButton(
            text: 'Test webhook',
            width: 150,
            height: 45,
            onTap: () {
              _updateSettings();
              getIt<WebhooksRepository>().sendTestWebhook(
                context.read<SettingsCubit>().state.webhookConfig,
              );
            },
          ),
        ],
      ),
    );
  }
}
