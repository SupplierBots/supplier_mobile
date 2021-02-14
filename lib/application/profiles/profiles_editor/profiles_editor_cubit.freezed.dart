// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profiles_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfilesEditorStateTearOff {
  const _$ProfilesEditorStateTearOff();

// ignore: unused_element
  _ProfilesEditorState call(
      {@required bool isEditing, @required String editedProfile}) {
    return _ProfilesEditorState(
      isEditing: isEditing,
      editedProfile: editedProfile,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfilesEditorState = _$ProfilesEditorStateTearOff();

/// @nodoc
mixin _$ProfilesEditorState {
  bool get isEditing;
  String get editedProfile;

  @JsonKey(ignore: true)
  $ProfilesEditorStateCopyWith<ProfilesEditorState> get copyWith;
}

/// @nodoc
abstract class $ProfilesEditorStateCopyWith<$Res> {
  factory $ProfilesEditorStateCopyWith(
          ProfilesEditorState value, $Res Function(ProfilesEditorState) then) =
      _$ProfilesEditorStateCopyWithImpl<$Res>;
  $Res call({bool isEditing, String editedProfile});
}

/// @nodoc
class _$ProfilesEditorStateCopyWithImpl<$Res>
    implements $ProfilesEditorStateCopyWith<$Res> {
  _$ProfilesEditorStateCopyWithImpl(this._value, this._then);

  final ProfilesEditorState _value;
  // ignore: unused_field
  final $Res Function(ProfilesEditorState) _then;

  @override
  $Res call({
    Object isEditing = freezed,
    Object editedProfile = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      editedProfile: editedProfile == freezed
          ? _value.editedProfile
          : editedProfile as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfilesEditorStateCopyWith<$Res>
    implements $ProfilesEditorStateCopyWith<$Res> {
  factory _$ProfilesEditorStateCopyWith(_ProfilesEditorState value,
          $Res Function(_ProfilesEditorState) then) =
      __$ProfilesEditorStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEditing, String editedProfile});
}

/// @nodoc
class __$ProfilesEditorStateCopyWithImpl<$Res>
    extends _$ProfilesEditorStateCopyWithImpl<$Res>
    implements _$ProfilesEditorStateCopyWith<$Res> {
  __$ProfilesEditorStateCopyWithImpl(
      _ProfilesEditorState _value, $Res Function(_ProfilesEditorState) _then)
      : super(_value, (v) => _then(v as _ProfilesEditorState));

  @override
  _ProfilesEditorState get _value => super._value as _ProfilesEditorState;

  @override
  $Res call({
    Object isEditing = freezed,
    Object editedProfile = freezed,
  }) {
    return _then(_ProfilesEditorState(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      editedProfile: editedProfile == freezed
          ? _value.editedProfile
          : editedProfile as String,
    ));
  }
}

/// @nodoc
class _$_ProfilesEditorState implements _ProfilesEditorState {
  const _$_ProfilesEditorState(
      {@required this.isEditing, @required this.editedProfile})
      : assert(isEditing != null),
        assert(editedProfile != null);

  @override
  final bool isEditing;
  @override
  final String editedProfile;

  @override
  String toString() {
    return 'ProfilesEditorState(isEditing: $isEditing, editedProfile: $editedProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfilesEditorState &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.editedProfile, editedProfile) ||
                const DeepCollectionEquality()
                    .equals(other.editedProfile, editedProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(editedProfile);

  @JsonKey(ignore: true)
  @override
  _$ProfilesEditorStateCopyWith<_ProfilesEditorState> get copyWith =>
      __$ProfilesEditorStateCopyWithImpl<_ProfilesEditorState>(
          this, _$identity);
}

abstract class _ProfilesEditorState implements ProfilesEditorState {
  const factory _ProfilesEditorState(
      {@required bool isEditing,
      @required String editedProfile}) = _$_ProfilesEditorState;

  @override
  bool get isEditing;
  @override
  String get editedProfile;
  @override
  @JsonKey(ignore: true)
  _$ProfilesEditorStateCopyWith<_ProfilesEditorState> get copyWith;
}
