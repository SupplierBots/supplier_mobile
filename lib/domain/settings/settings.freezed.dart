// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

// ignore: unused_element
  _Settings call({bool enableVibrations, bool enableWarnings}) {
    return _Settings(
      enableVibrations: enableVibrations,
      enableWarnings: enableWarnings,
    );
  }

// ignore: unused_element
  Settings fromJson(Map<String, Object> json) {
    return Settings.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  bool get enableVibrations;
  bool get enableWarnings;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call({bool enableVibrations, bool enableWarnings});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object enableVibrations = freezed,
    Object enableWarnings = freezed,
  }) {
    return _then(_value.copyWith(
      enableVibrations: enableVibrations == freezed
          ? _value.enableVibrations
          : enableVibrations as bool,
      enableWarnings: enableWarnings == freezed
          ? _value.enableWarnings
          : enableWarnings as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool enableVibrations, bool enableWarnings});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object enableVibrations = freezed,
    Object enableWarnings = freezed,
  }) {
    return _then(_Settings(
      enableVibrations: enableVibrations == freezed
          ? _value.enableVibrations
          : enableVibrations as bool,
      enableWarnings: enableWarnings == freezed
          ? _value.enableWarnings
          : enableWarnings as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Settings implements _Settings {
  const _$_Settings({this.enableVibrations, this.enableWarnings});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsFromJson(json);

  @override
  final bool enableVibrations;
  @override
  final bool enableWarnings;

  @override
  String toString() {
    return 'Settings(enableVibrations: $enableVibrations, enableWarnings: $enableWarnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Settings &&
            (identical(other.enableVibrations, enableVibrations) ||
                const DeepCollectionEquality()
                    .equals(other.enableVibrations, enableVibrations)) &&
            (identical(other.enableWarnings, enableWarnings) ||
                const DeepCollectionEquality()
                    .equals(other.enableWarnings, enableWarnings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enableVibrations) ^
      const DeepCollectionEquality().hash(enableWarnings);

  @JsonKey(ignore: true)
  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsToJson(this);
  }
}

abstract class _Settings implements Settings {
  const factory _Settings({bool enableVibrations, bool enableWarnings}) =
      _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  bool get enableVibrations;
  @override
  bool get enableWarnings;
  @override
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith;
}
