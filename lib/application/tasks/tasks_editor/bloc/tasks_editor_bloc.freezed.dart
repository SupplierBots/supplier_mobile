// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tasks_editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TasksEditorEventTearOff {
  const _$TasksEditorEventTearOff();

// ignore: unused_element
  _StartedEditing startedEditing(Option<String> uid) {
    return _StartedEditing(
      uid,
    );
  }

// ignore: unused_element
  _FinishedEditing finishedEditing() {
    return const _FinishedEditing();
  }
}

/// @nodoc
// ignore: unused_element
const $TasksEditorEvent = _$TasksEditorEventTearOff();

/// @nodoc
mixin _$TasksEditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startedEditing(Option<String> uid),
    @required TResult finishedEditing(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startedEditing(Option<String> uid),
    TResult finishedEditing(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startedEditing(_StartedEditing value),
    @required TResult finishedEditing(_FinishedEditing value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startedEditing(_StartedEditing value),
    TResult finishedEditing(_FinishedEditing value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TasksEditorEventCopyWith<$Res> {
  factory $TasksEditorEventCopyWith(
          TasksEditorEvent value, $Res Function(TasksEditorEvent) then) =
      _$TasksEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksEditorEventCopyWithImpl<$Res>
    implements $TasksEditorEventCopyWith<$Res> {
  _$TasksEditorEventCopyWithImpl(this._value, this._then);

  final TasksEditorEvent _value;
  // ignore: unused_field
  final $Res Function(TasksEditorEvent) _then;
}

/// @nodoc
abstract class _$StartedEditingCopyWith<$Res> {
  factory _$StartedEditingCopyWith(
          _StartedEditing value, $Res Function(_StartedEditing) then) =
      __$StartedEditingCopyWithImpl<$Res>;
  $Res call({Option<String> uid});
}

/// @nodoc
class __$StartedEditingCopyWithImpl<$Res>
    extends _$TasksEditorEventCopyWithImpl<$Res>
    implements _$StartedEditingCopyWith<$Res> {
  __$StartedEditingCopyWithImpl(
      _StartedEditing _value, $Res Function(_StartedEditing) _then)
      : super(_value, (v) => _then(v as _StartedEditing));

  @override
  _StartedEditing get _value => super._value as _StartedEditing;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(_StartedEditing(
      uid == freezed ? _value.uid : uid as Option<String>,
    ));
  }
}

/// @nodoc
class _$_StartedEditing implements _StartedEditing {
  const _$_StartedEditing(this.uid) : assert(uid != null);

  @override
  final Option<String> uid;

  @override
  String toString() {
    return 'TasksEditorEvent.startedEditing(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartedEditing &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$StartedEditingCopyWith<_StartedEditing> get copyWith =>
      __$StartedEditingCopyWithImpl<_StartedEditing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startedEditing(Option<String> uid),
    @required TResult finishedEditing(),
  }) {
    assert(startedEditing != null);
    assert(finishedEditing != null);
    return startedEditing(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startedEditing(Option<String> uid),
    TResult finishedEditing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startedEditing != null) {
      return startedEditing(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startedEditing(_StartedEditing value),
    @required TResult finishedEditing(_FinishedEditing value),
  }) {
    assert(startedEditing != null);
    assert(finishedEditing != null);
    return startedEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startedEditing(_StartedEditing value),
    TResult finishedEditing(_FinishedEditing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startedEditing != null) {
      return startedEditing(this);
    }
    return orElse();
  }
}

abstract class _StartedEditing implements TasksEditorEvent {
  const factory _StartedEditing(Option<String> uid) = _$_StartedEditing;

  Option<String> get uid;
  @JsonKey(ignore: true)
  _$StartedEditingCopyWith<_StartedEditing> get copyWith;
}

/// @nodoc
abstract class _$FinishedEditingCopyWith<$Res> {
  factory _$FinishedEditingCopyWith(
          _FinishedEditing value, $Res Function(_FinishedEditing) then) =
      __$FinishedEditingCopyWithImpl<$Res>;
}

/// @nodoc
class __$FinishedEditingCopyWithImpl<$Res>
    extends _$TasksEditorEventCopyWithImpl<$Res>
    implements _$FinishedEditingCopyWith<$Res> {
  __$FinishedEditingCopyWithImpl(
      _FinishedEditing _value, $Res Function(_FinishedEditing) _then)
      : super(_value, (v) => _then(v as _FinishedEditing));

  @override
  _FinishedEditing get _value => super._value as _FinishedEditing;
}

/// @nodoc
class _$_FinishedEditing implements _FinishedEditing {
  const _$_FinishedEditing();

  @override
  String toString() {
    return 'TasksEditorEvent.finishedEditing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FinishedEditing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startedEditing(Option<String> uid),
    @required TResult finishedEditing(),
  }) {
    assert(startedEditing != null);
    assert(finishedEditing != null);
    return finishedEditing();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startedEditing(Option<String> uid),
    TResult finishedEditing(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finishedEditing != null) {
      return finishedEditing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startedEditing(_StartedEditing value),
    @required TResult finishedEditing(_FinishedEditing value),
  }) {
    assert(startedEditing != null);
    assert(finishedEditing != null);
    return finishedEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startedEditing(_StartedEditing value),
    TResult finishedEditing(_FinishedEditing value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finishedEditing != null) {
      return finishedEditing(this);
    }
    return orElse();
  }
}

abstract class _FinishedEditing implements TasksEditorEvent {
  const factory _FinishedEditing() = _$_FinishedEditing;
}

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
