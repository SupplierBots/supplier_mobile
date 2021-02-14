// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tasks_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TasksEditorStateTearOff {
  const _$TasksEditorStateTearOff();

// ignore: unused_element
  _TasksEditorState call(
      {@required bool isEditing, @required Option<String> editedTaskUid}) {
    return _TasksEditorState(
      isEditing: isEditing,
      editedTaskUid: editedTaskUid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TasksEditorState = _$TasksEditorStateTearOff();

/// @nodoc
mixin _$TasksEditorState {
  bool get isEditing;
  Option<String> get editedTaskUid;

  @JsonKey(ignore: true)
  $TasksEditorStateCopyWith<TasksEditorState> get copyWith;
}

/// @nodoc
abstract class $TasksEditorStateCopyWith<$Res> {
  factory $TasksEditorStateCopyWith(
          TasksEditorState value, $Res Function(TasksEditorState) then) =
      _$TasksEditorStateCopyWithImpl<$Res>;
  $Res call({bool isEditing, Option<String> editedTaskUid});
}

/// @nodoc
class _$TasksEditorStateCopyWithImpl<$Res>
    implements $TasksEditorStateCopyWith<$Res> {
  _$TasksEditorStateCopyWithImpl(this._value, this._then);

  final TasksEditorState _value;
  // ignore: unused_field
  final $Res Function(TasksEditorState) _then;

  @override
  $Res call({
    Object isEditing = freezed,
    Object editedTaskUid = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      editedTaskUid: editedTaskUid == freezed
          ? _value.editedTaskUid
          : editedTaskUid as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$TasksEditorStateCopyWith<$Res>
    implements $TasksEditorStateCopyWith<$Res> {
  factory _$TasksEditorStateCopyWith(
          _TasksEditorState value, $Res Function(_TasksEditorState) then) =
      __$TasksEditorStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isEditing, Option<String> editedTaskUid});
}

/// @nodoc
class __$TasksEditorStateCopyWithImpl<$Res>
    extends _$TasksEditorStateCopyWithImpl<$Res>
    implements _$TasksEditorStateCopyWith<$Res> {
  __$TasksEditorStateCopyWithImpl(
      _TasksEditorState _value, $Res Function(_TasksEditorState) _then)
      : super(_value, (v) => _then(v as _TasksEditorState));

  @override
  _TasksEditorState get _value => super._value as _TasksEditorState;

  @override
  $Res call({
    Object isEditing = freezed,
    Object editedTaskUid = freezed,
  }) {
    return _then(_TasksEditorState(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      editedTaskUid: editedTaskUid == freezed
          ? _value.editedTaskUid
          : editedTaskUid as Option<String>,
    ));
  }
}

/// @nodoc
class _$_TasksEditorState implements _TasksEditorState {
  const _$_TasksEditorState(
      {@required this.isEditing, @required this.editedTaskUid})
      : assert(isEditing != null),
        assert(editedTaskUid != null);

  @override
  final bool isEditing;
  @override
  final Option<String> editedTaskUid;

  @override
  String toString() {
    return 'TasksEditorState(isEditing: $isEditing, editedTaskUid: $editedTaskUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TasksEditorState &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.editedTaskUid, editedTaskUid) ||
                const DeepCollectionEquality()
                    .equals(other.editedTaskUid, editedTaskUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(editedTaskUid);

  @JsonKey(ignore: true)
  @override
  _$TasksEditorStateCopyWith<_TasksEditorState> get copyWith =>
      __$TasksEditorStateCopyWithImpl<_TasksEditorState>(this, _$identity);
}

abstract class _TasksEditorState implements TasksEditorState {
  const factory _TasksEditorState(
      {@required bool isEditing,
      @required Option<String> editedTaskUid}) = _$_TasksEditorState;

  @override
  bool get isEditing;
  @override
  Option<String> get editedTaskUid;
  @override
  @JsonKey(ignore: true)
  _$TasksEditorStateCopyWith<_TasksEditorState> get copyWith;
}
