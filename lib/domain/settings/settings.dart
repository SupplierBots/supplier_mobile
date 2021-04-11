import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
abstract class Settings with _$Settings {
  const factory Settings({
    bool enableVibrations,
    bool enableWarnings,
  }) = _Settings;
  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
