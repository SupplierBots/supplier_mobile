// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TasksEventTearOff {
  const _$TasksEventTearOff();

// ignore: unused_element
  _SetTask setTask(String uid, Task task) {
    return _SetTask(
      uid,
      task,
    );
  }

// ignore: unused_element
  _DeletedTask deletedTask(String uid) {
    return _DeletedTask(
      uid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TasksEvent = _$TasksEventTearOff();

/// @nodoc
mixin _$TasksEvent {
  String get uid;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setTask(String uid, Task task),
    @required TResult deletedTask(String uid),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setTask(String uid, Task task),
    TResult deletedTask(String uid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setTask(_SetTask value),
    @required TResult deletedTask(_DeletedTask value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setTask(_SetTask value),
    TResult deletedTask(_DeletedTask value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TasksEventCopyWith<TasksEvent> get copyWith;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res> implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  final TasksEvent _value;
  // ignore: unused_field
  final $Res Function(TasksEvent) _then;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
abstract class _$SetTaskCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory _$SetTaskCopyWith(_SetTask value, $Res Function(_SetTask) then) =
      __$SetTaskCopyWithImpl<$Res>;
  @override
  $Res call({String uid, Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$SetTaskCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$SetTaskCopyWith<$Res> {
  __$SetTaskCopyWithImpl(_SetTask _value, $Res Function(_SetTask) _then)
      : super(_value, (v) => _then(v as _SetTask));

  @override
  _SetTask get _value => super._value as _SetTask;

  @override
  $Res call({
    Object uid = freezed,
    Object task = freezed,
  }) {
    return _then(_SetTask(
      uid == freezed ? _value.uid : uid as String,
      task == freezed ? _value.task : task as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    if (_value.task == null) {
      return null;
    }
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
class _$_SetTask implements _SetTask {
  const _$_SetTask(this.uid, this.task)
      : assert(uid != null),
        assert(task != null);

  @override
  final String uid;
  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.setTask(uid: $uid, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetTask &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(task);

  @JsonKey(ignore: true)
  @override
  _$SetTaskCopyWith<_SetTask> get copyWith =>
      __$SetTaskCopyWithImpl<_SetTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setTask(String uid, Task task),
    @required TResult deletedTask(String uid),
  }) {
    assert(setTask != null);
    assert(deletedTask != null);
    return setTask(uid, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setTask(String uid, Task task),
    TResult deletedTask(String uid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setTask != null) {
      return setTask(uid, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setTask(_SetTask value),
    @required TResult deletedTask(_DeletedTask value),
  }) {
    assert(setTask != null);
    assert(deletedTask != null);
    return setTask(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setTask(_SetTask value),
    TResult deletedTask(_DeletedTask value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setTask != null) {
      return setTask(this);
    }
    return orElse();
  }
}

abstract class _SetTask implements TasksEvent {
  const factory _SetTask(String uid, Task task) = _$_SetTask;

  @override
  String get uid;
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$SetTaskCopyWith<_SetTask> get copyWith;
}

/// @nodoc
abstract class _$DeletedTaskCopyWith<$Res>
    implements $TasksEventCopyWith<$Res> {
  factory _$DeletedTaskCopyWith(
          _DeletedTask value, $Res Function(_DeletedTask) then) =
      __$DeletedTaskCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

/// @nodoc
class __$DeletedTaskCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$DeletedTaskCopyWith<$Res> {
  __$DeletedTaskCopyWithImpl(
      _DeletedTask _value, $Res Function(_DeletedTask) _then)
      : super(_value, (v) => _then(v as _DeletedTask));

  @override
  _DeletedTask get _value => super._value as _DeletedTask;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(_DeletedTask(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$_DeletedTask implements _DeletedTask {
  const _$_DeletedTask(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'TasksEvent.deletedTask(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletedTask &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$DeletedTaskCopyWith<_DeletedTask> get copyWith =>
      __$DeletedTaskCopyWithImpl<_DeletedTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setTask(String uid, Task task),
    @required TResult deletedTask(String uid),
  }) {
    assert(setTask != null);
    assert(deletedTask != null);
    return deletedTask(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setTask(String uid, Task task),
    TResult deletedTask(String uid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedTask != null) {
      return deletedTask(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setTask(_SetTask value),
    @required TResult deletedTask(_DeletedTask value),
  }) {
    assert(setTask != null);
    assert(deletedTask != null);
    return deletedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setTask(_SetTask value),
    TResult deletedTask(_DeletedTask value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedTask != null) {
      return deletedTask(this);
    }
    return orElse();
  }
}

abstract class _DeletedTask implements TasksEvent {
  const factory _DeletedTask(String uid) = _$_DeletedTask;

  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$DeletedTaskCopyWith<_DeletedTask> get copyWith;
}

TasksState _$TasksStateFromJson(Map<String, dynamic> json) {
  return _TasksState.fromJson(json);
}

/// @nodoc
class _$TasksStateTearOff {
  const _$TasksStateTearOff();

// ignore: unused_element
  _TasksState call({Map<String, Task> tasks}) {
    return _TasksState(
      tasks: tasks,
    );
  }

// ignore: unused_element
  TasksState fromJson(Map<String, Object> json) {
    return TasksState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TasksState = _$TasksStateTearOff();

/// @nodoc
mixin _$TasksState {
  Map<String, Task> get tasks;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res>;
  $Res call({Map<String, Task> tasks});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res> implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  final TasksState _value;
  // ignore: unused_field
  final $Res Function(TasksState) _then;

  @override
  $Res call({
    Object tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: tasks == freezed ? _value.tasks : tasks as Map<String, Task>,
    ));
  }
}

/// @nodoc
abstract class _$TasksStateCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksStateCopyWith(
          _TasksState value, $Res Function(_TasksState) then) =
      __$TasksStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, Task> tasks});
}

/// @nodoc
class __$TasksStateCopyWithImpl<$Res> extends _$TasksStateCopyWithImpl<$Res>
    implements _$TasksStateCopyWith<$Res> {
  __$TasksStateCopyWithImpl(
      _TasksState _value, $Res Function(_TasksState) _then)
      : super(_value, (v) => _then(v as _TasksState));

  @override
  _TasksState get _value => super._value as _TasksState;

  @override
  $Res call({
    Object tasks = freezed,
  }) {
    return _then(_TasksState(
      tasks: tasks == freezed ? _value.tasks : tasks as Map<String, Task>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TasksState extends _TasksState {
  const _$_TasksState({this.tasks}) : super._();

  factory _$_TasksState.fromJson(Map<String, dynamic> json) =>
      _$_$_TasksStateFromJson(json);

  @override
  final Map<String, Task> tasks;

  @override
  String toString() {
    return 'TasksState(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TasksState &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$TasksStateCopyWith<_TasksState> get copyWith =>
      __$TasksStateCopyWithImpl<_TasksState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TasksStateToJson(this);
  }
}

abstract class _TasksState extends TasksState {
  const _TasksState._() : super._();
  const factory _TasksState({Map<String, Task> tasks}) = _$_TasksState;

  factory _TasksState.fromJson(Map<String, dynamic> json) =
      _$_TasksState.fromJson;

  @override
  Map<String, Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$TasksStateCopyWith<_TasksState> get copyWith;
}
