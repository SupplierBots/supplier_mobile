// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profiles_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfilesState _$ProfilesStateFromJson(Map<String, dynamic> json) {
  return _ProfilesState.fromJson(json);
}

/// @nodoc
class _$ProfilesStateTearOff {
  const _$ProfilesStateTearOff();

// ignore: unused_element
  _ProfilesState call({Map<String, Profile> profiles}) {
    return _ProfilesState(
      profiles: profiles,
    );
  }

// ignore: unused_element
  ProfilesState fromJson(Map<String, Object> json) {
    return ProfilesState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProfilesState = _$ProfilesStateTearOff();

/// @nodoc
mixin _$ProfilesState {
  Map<String, Profile> get profiles;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProfilesStateCopyWith<ProfilesState> get copyWith;
}

/// @nodoc
abstract class $ProfilesStateCopyWith<$Res> {
  factory $ProfilesStateCopyWith(
          ProfilesState value, $Res Function(ProfilesState) then) =
      _$ProfilesStateCopyWithImpl<$Res>;
  $Res call({Map<String, Profile> profiles});
}

/// @nodoc
class _$ProfilesStateCopyWithImpl<$Res>
    implements $ProfilesStateCopyWith<$Res> {
  _$ProfilesStateCopyWithImpl(this._value, this._then);

  final ProfilesState _value;
  // ignore: unused_field
  final $Res Function(ProfilesState) _then;

  @override
  $Res call({
    Object profiles = freezed,
  }) {
    return _then(_value.copyWith(
      profiles: profiles == freezed
          ? _value.profiles
          : profiles as Map<String, Profile>,
    ));
  }
}

/// @nodoc
abstract class _$ProfilesStateCopyWith<$Res>
    implements $ProfilesStateCopyWith<$Res> {
  factory _$ProfilesStateCopyWith(
          _ProfilesState value, $Res Function(_ProfilesState) then) =
      __$ProfilesStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, Profile> profiles});
}

/// @nodoc
class __$ProfilesStateCopyWithImpl<$Res>
    extends _$ProfilesStateCopyWithImpl<$Res>
    implements _$ProfilesStateCopyWith<$Res> {
  __$ProfilesStateCopyWithImpl(
      _ProfilesState _value, $Res Function(_ProfilesState) _then)
      : super(_value, (v) => _then(v as _ProfilesState));

  @override
  _ProfilesState get _value => super._value as _ProfilesState;

  @override
  $Res call({
    Object profiles = freezed,
  }) {
    return _then(_ProfilesState(
      profiles: profiles == freezed
          ? _value.profiles
          : profiles as Map<String, Profile>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProfilesState implements _ProfilesState {
  const _$_ProfilesState({this.profiles});

  factory _$_ProfilesState.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfilesStateFromJson(json);

  @override
  final Map<String, Profile> profiles;

  @override
  String toString() {
    return 'ProfilesState(profiles: $profiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfilesState &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profiles);

  @JsonKey(ignore: true)
  @override
  _$ProfilesStateCopyWith<_ProfilesState> get copyWith =>
      __$ProfilesStateCopyWithImpl<_ProfilesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfilesStateToJson(this);
  }
}

abstract class _ProfilesState implements ProfilesState {
  const factory _ProfilesState({Map<String, Profile> profiles}) =
      _$_ProfilesState;

  factory _ProfilesState.fromJson(Map<String, dynamic> json) =
      _$_ProfilesState.fromJson;

  @override
  Map<String, Profile> get profiles;
  @override
  @JsonKey(ignore: true)
  _$ProfilesStateCopyWith<_ProfilesState> get copyWith;
}
