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
  _Added added(Task task) {
    return _Added(
      task,
    );
  }

// ignore: unused_element
  _Deleted deleted(Task task) {
    return _Deleted(
      task,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TasksEvent = _$TasksEventTearOff();

/// @nodoc
mixin _$TasksEvent {
  Task get task;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Task task),
    @required TResult deleted(Task task),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Task task),
    TResult deleted(Task task),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(_Added value),
    TResult deleted(_Deleted value),
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
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res> implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  final TasksEvent _value;
  // ignore: unused_field
  final $Res Function(TasksEvent) _then;

  @override
  $Res call({
    Object task = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed ? _value.task : task as Task,
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
abstract class _$AddedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory _$AddedCopyWith(_Added value, $Res Function(_Added) then) =
      __$AddedCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$AddedCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$AddedCopyWith<$Res> {
  __$AddedCopyWithImpl(_Added _value, $Res Function(_Added) _then)
      : super(_value, (v) => _then(v as _Added));

  @override
  _Added get _value => super._value as _Added;

  @override
  $Res call({
    Object task = freezed,
  }) {
    return _then(_Added(
      task == freezed ? _value.task : task as Task,
    ));
  }
}

/// @nodoc
class _$_Added implements _Added {
  const _$_Added(this.task) : assert(task != null);

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.added(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Added &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(task);

  @JsonKey(ignore: true)
  @override
  _$AddedCopyWith<_Added> get copyWith =>
      __$AddedCopyWithImpl<_Added>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Task task),
    @required TResult deleted(Task task),
  }) {
    assert(added != null);
    assert(deleted != null);
    return added(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Task task),
    TResult deleted(Task task),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(added != null);
    assert(deleted != null);
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements TasksEvent {
  const factory _Added(Task task) = _$_Added;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$AddedCopyWith<_Added> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> implements $TasksEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$TasksEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object task = freezed,
  }) {
    return _then(_Deleted(
      task == freezed ? _value.task : task as Task,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.task) : assert(task != null);

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.deleted(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(task);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult added(Task task),
    @required TResult deleted(Task task),
  }) {
    assert(added != null);
    assert(deleted != null);
    return deleted(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult added(Task task),
    TResult deleted(Task task),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult added(_Added value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(added != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult added(_Added value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TasksEvent {
  const factory _Deleted(Task task) = _$_Deleted;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith;
}

TasksState _$TasksStateFromJson(Map<String, dynamic> json) {
  return _TasksState.fromJson(json);
}

/// @nodoc
class _$TasksStateTearOff {
  const _$TasksStateTearOff();

// ignore: unused_element
  _TasksState call({List<Task> tasks}) {
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
  List<Task> get tasks;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res>;
  $Res call({List<Task> tasks});
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
      tasks: tasks == freezed ? _value.tasks : tasks as List<Task>,
    ));
  }
}

/// @nodoc
abstract class _$TasksStateCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksStateCopyWith(
          _TasksState value, $Res Function(_TasksState) then) =
      __$TasksStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Task> tasks});
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
      tasks: tasks == freezed ? _value.tasks : tasks as List<Task>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TasksState implements _TasksState {
  const _$_TasksState({this.tasks});

  factory _$_TasksState.fromJson(Map<String, dynamic> json) =>
      _$_$_TasksStateFromJson(json);

  @override
  final List<Task> tasks;

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

abstract class _TasksState implements TasksState {
  const factory _TasksState({List<Task> tasks}) = _$_TasksState;

  factory _TasksState.fromJson(Map<String, dynamic> json) =
      _$_TasksState.fromJson;

  @override
  List<Task> get tasks;
  @override
  @JsonKey(ignore: true)
  _$TasksStateCopyWith<_TasksState> get copyWith;
}
