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
  _SettingsState call({@required Settings settings}) {
    return _SettingsState(
      settings: settings,
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
  Settings get settings;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({Settings settings});
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
    Object settings = freezed,
  }) {
    return _then(_value.copyWith(
      settings: settings == freezed ? _value.settings : settings as Settings,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({Settings settings});
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
    Object settings = freezed,
  }) {
    return _then(_SettingsState(
      settings: settings == freezed ? _value.settings : settings as Settings,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SettingsState implements _SettingsState {
  const _$_SettingsState({@required this.settings}) : assert(settings != null);

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsStateFromJson(json);

  @override
  final Settings settings;

  @override
  String toString() {
    return 'SettingsState(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

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
  const factory _SettingsState({@required Settings settings}) =
      _$_SettingsState;

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$_SettingsState.fromJson;

  @override
  Settings get settings;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith;
}
