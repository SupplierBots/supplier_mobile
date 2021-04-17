import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:supplier_mobile/domain/settings/personalization.dart';
import 'package:supplier_mobile/domain/webhooks/webhook_config.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());

  void setPersonalizationSettings({Personalization settings}) {
    emit(
      state.copyWith(
        personalization: settings,
      ),
    );
  }

  void setWebhookConfig({WebhookConfig config}) {
    emit(
      state.copyWith(
        webhookConfig: config,
      ),
    );
  }

  @override
  SettingsState fromJson(Map<String, dynamic> json) {
    return SettingsState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(SettingsState state) {
    return state.toJson();
  }
}
