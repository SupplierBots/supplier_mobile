// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

// ignore: unused_element
  _SettingsState call(
      {@required Personalization personalization,
      @required WebhookConfig webhookConfig}) {
    return _SettingsState(
      personalization: personalization,
      webhookConfig: webhookConfig,
    );
  }

// ignore: unused_element
  SettingsState fromJson(Map<String, Object> json) {
    return SettingsState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  Personalization get personalization;
  WebhookConfig get webhookConfig;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({Personalization personalization, WebhookConfig webhookConfig});

  $PersonalizationCopyWith<$Res> get personalization;
  $WebhookConfigCopyWith<$Res> get webhookConfig;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object personalization = freezed,
    Object webhookConfig = freezed,
  }) {
    return _then(_value.copyWith(
      personalization: personalization == freezed
          ? _value.personalization
          : personalization as Personalization,
      webhookConfig: webhookConfig == freezed
          ? _value.webhookConfig
          : webhookConfig as WebhookConfig,
    ));
  }

  @override
  $PersonalizationCopyWith<$Res> get personalization {
    if (_value.personalization == null) {
      return null;
    }
    return $PersonalizationCopyWith<$Res>(_value.personalization, (value) {
      return _then(_value.copyWith(personalization: value));
    });
  }

  @override
  $WebhookConfigCopyWith<$Res> get webhookConfig {
    if (_value.webhookConfig == null) {
      return null;
    }
    return $WebhookConfigCopyWith<$Res>(_value.webhookConfig, (value) {
      return _then(_value.copyWith(webhookConfig: value));
    });
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({Personalization personalization, WebhookConfig webhookConfig});

  @override
  $PersonalizationCopyWith<$Res> get personalization;
  @override
  $WebhookConfigCopyWith<$Res> get webhookConfig;
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object personalization = freezed,
    Object webhookConfig = freezed,
  }) {
    return _then(_SettingsState(
      personalization: personalization == freezed
          ? _value.personalization
          : personalization as Personalization,
      webhookConfig: webhookConfig == freezed
          ? _value.webhookConfig
          : webhookConfig as WebhookConfig,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {@required this.personalization, @required this.webhookConfig})
      : assert(personalization != null),
        assert(webhookConfig != null);

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsStateFromJson(json);

  @override
  final Personalization personalization;
  @override
  final WebhookConfig webhookConfig;

  @override
  String toString() {
    return 'SettingsState(personalization: $personalization, webhookConfig: $webhookConfig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.personalization, personalization) ||
                const DeepCollectionEquality()
                    .equals(other.personalization, personalization)) &&
            (identical(other.webhookConfig, webhookConfig) ||
                const DeepCollectionEquality()
                    .equals(other.webhookConfig, webhookConfig)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(personalization) ^
      const DeepCollectionEquality().hash(webhookConfig);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsStateToJson(this);
  }
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {@required Personalization personalization,
      @required WebhookConfig webhookConfig}) = _$_SettingsState;

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$_SettingsState.fromJson;

  @override
  Personalization get personalization;
  @override
  WebhookConfig get webhookConfig;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith;
}
