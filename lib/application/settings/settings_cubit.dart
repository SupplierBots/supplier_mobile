import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:supplier_mobile/domain/settings/settings.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());

  void setVibrations({bool enabled}) {
    emit(
      SettingsState(
        settings: state.settings.copyWith(
          enableVibrations: enabled,
        ),
      ),
    );
  }

  void setWarnings({bool enabled}) {
    emit(
      SettingsState(
        settings: state.settings.copyWith(
          enableWarnings: enabled,
        ),
      ),
    );
  }

  void update({Settings settings}) {
    emit(
      SettingsState(
        settings: settings,
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
