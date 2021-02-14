// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tasks_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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
