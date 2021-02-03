// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profiles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfilesEventTearOff {
  const _$ProfilesEventTearOff();

// ignore: unused_element
  _SetProfile setProfile({@required String name, @required Profile profile}) {
    return _SetProfile(
      name: name,
      profile: profile,
    );
  }

// ignore: unused_element
  _DeleteProfile deleteProfile({@required String name}) {
    return _DeleteProfile(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfilesEvent = _$ProfilesEventTearOff();

/// @nodoc
mixin _$ProfilesEvent {
  String get name;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setProfile(String name, Profile profile),
    @required TResult deleteProfile(String name),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setProfile(String name, Profile profile),
    TResult deleteProfile(String name),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setProfile(_SetProfile value),
    @required TResult deleteProfile(_DeleteProfile value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setProfile(_SetProfile value),
    TResult deleteProfile(_DeleteProfile value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ProfilesEventCopyWith<ProfilesEvent> get copyWith;
}

/// @nodoc
abstract class $ProfilesEventCopyWith<$Res> {
  factory $ProfilesEventCopyWith(
          ProfilesEvent value, $Res Function(ProfilesEvent) then) =
      _$ProfilesEventCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ProfilesEventCopyWithImpl<$Res>
    implements $ProfilesEventCopyWith<$Res> {
  _$ProfilesEventCopyWithImpl(this._value, this._then);

  final ProfilesEvent _value;
  // ignore: unused_field
  final $Res Function(ProfilesEvent) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$SetProfileCopyWith<$Res>
    implements $ProfilesEventCopyWith<$Res> {
  factory _$SetProfileCopyWith(
          _SetProfile value, $Res Function(_SetProfile) then) =
      __$SetProfileCopyWithImpl<$Res>;
  @override
  $Res call({String name, Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$SetProfileCopyWithImpl<$Res> extends _$ProfilesEventCopyWithImpl<$Res>
    implements _$SetProfileCopyWith<$Res> {
  __$SetProfileCopyWithImpl(
      _SetProfile _value, $Res Function(_SetProfile) _then)
      : super(_value, (v) => _then(v as _SetProfile));

  @override
  _SetProfile get _value => super._value as _SetProfile;

  @override
  $Res call({
    Object name = freezed,
    Object profile = freezed,
  }) {
    return _then(_SetProfile(
      name: name == freezed ? _value.name : name as String,
      profile: profile == freezed ? _value.profile : profile as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
class _$_SetProfile implements _SetProfile {
  const _$_SetProfile({@required this.name, @required this.profile})
      : assert(name != null),
        assert(profile != null);

  @override
  final String name;
  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfilesEvent.setProfile(name: $name, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  _$SetProfileCopyWith<_SetProfile> get copyWith =>
      __$SetProfileCopyWithImpl<_SetProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setProfile(String name, Profile profile),
    @required TResult deleteProfile(String name),
  }) {
    assert(setProfile != null);
    assert(deleteProfile != null);
    return setProfile(name, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setProfile(String name, Profile profile),
    TResult deleteProfile(String name),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setProfile != null) {
      return setProfile(name, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setProfile(_SetProfile value),
    @required TResult deleteProfile(_DeleteProfile value),
  }) {
    assert(setProfile != null);
    assert(deleteProfile != null);
    return setProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setProfile(_SetProfile value),
    TResult deleteProfile(_DeleteProfile value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setProfile != null) {
      return setProfile(this);
    }
    return orElse();
  }
}

abstract class _SetProfile implements ProfilesEvent {
  const factory _SetProfile(
      {@required String name, @required Profile profile}) = _$_SetProfile;

  @override
  String get name;
  Profile get profile;
  @override
  @JsonKey(ignore: true)
  _$SetProfileCopyWith<_SetProfile> get copyWith;
}

/// @nodoc
abstract class _$DeleteProfileCopyWith<$Res>
    implements $ProfilesEventCopyWith<$Res> {
  factory _$DeleteProfileCopyWith(
          _DeleteProfile value, $Res Function(_DeleteProfile) then) =
      __$DeleteProfileCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$DeleteProfileCopyWithImpl<$Res>
    extends _$ProfilesEventCopyWithImpl<$Res>
    implements _$DeleteProfileCopyWith<$Res> {
  __$DeleteProfileCopyWithImpl(
      _DeleteProfile _value, $Res Function(_DeleteProfile) _then)
      : super(_value, (v) => _then(v as _DeleteProfile));

  @override
  _DeleteProfile get _value => super._value as _DeleteProfile;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_DeleteProfile(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_DeleteProfile implements _DeleteProfile {
  const _$_DeleteProfile({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfilesEvent.deleteProfile(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$DeleteProfileCopyWith<_DeleteProfile> get copyWith =>
      __$DeleteProfileCopyWithImpl<_DeleteProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setProfile(String name, Profile profile),
    @required TResult deleteProfile(String name),
  }) {
    assert(setProfile != null);
    assert(deleteProfile != null);
    return deleteProfile(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setProfile(String name, Profile profile),
    TResult deleteProfile(String name),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProfile != null) {
      return deleteProfile(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setProfile(_SetProfile value),
    @required TResult deleteProfile(_DeleteProfile value),
  }) {
    assert(setProfile != null);
    assert(deleteProfile != null);
    return deleteProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setProfile(_SetProfile value),
    TResult deleteProfile(_DeleteProfile value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProfile != null) {
      return deleteProfile(this);
    }
    return orElse();
  }
}

abstract class _DeleteProfile implements ProfilesEvent {
  const factory _DeleteProfile({@required String name}) = _$_DeleteProfile;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$DeleteProfileCopyWith<_DeleteProfile> get copyWith;
}

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
