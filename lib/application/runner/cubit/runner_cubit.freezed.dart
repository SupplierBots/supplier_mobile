// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'runner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RunnerStateTearOff {
  const _$RunnerStateTearOff();

// ignore: unused_element
  _RunnerState call(
      {@required Map<Task, TaskProgress> tasksProgress,
      @required Option<Task> visibleTask}) {
    return _RunnerState(
      tasksProgress: tasksProgress,
      visibleTask: visibleTask,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RunnerState = _$RunnerStateTearOff();

/// @nodoc
mixin _$RunnerState {
  Map<Task, TaskProgress> get tasksProgress;
  Option<Task> get visibleTask;

  @JsonKey(ignore: true)
  $RunnerStateCopyWith<RunnerState> get copyWith;
}

/// @nodoc
abstract class $RunnerStateCopyWith<$Res> {
  factory $RunnerStateCopyWith(
          RunnerState value, $Res Function(RunnerState) then) =
      _$RunnerStateCopyWithImpl<$Res>;
  $Res call({Map<Task, TaskProgress> tasksProgress, Option<Task> visibleTask});
}

/// @nodoc
class _$RunnerStateCopyWithImpl<$Res> implements $RunnerStateCopyWith<$Res> {
  _$RunnerStateCopyWithImpl(this._value, this._then);

  final RunnerState _value;
  // ignore: unused_field
  final $Res Function(RunnerState) _then;

  @override
  $Res call({
    Object tasksProgress = freezed,
    Object visibleTask = freezed,
  }) {
    return _then(_value.copyWith(
      tasksProgress: tasksProgress == freezed
          ? _value.tasksProgress
          : tasksProgress as Map<Task, TaskProgress>,
      visibleTask: visibleTask == freezed
          ? _value.visibleTask
          : visibleTask as Option<Task>,
    ));
  }
}

/// @nodoc
abstract class _$RunnerStateCopyWith<$Res>
    implements $RunnerStateCopyWith<$Res> {
  factory _$RunnerStateCopyWith(
          _RunnerState value, $Res Function(_RunnerState) then) =
      __$RunnerStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<Task, TaskProgress> tasksProgress, Option<Task> visibleTask});
}

/// @nodoc
class __$RunnerStateCopyWithImpl<$Res> extends _$RunnerStateCopyWithImpl<$Res>
    implements _$RunnerStateCopyWith<$Res> {
  __$RunnerStateCopyWithImpl(
      _RunnerState _value, $Res Function(_RunnerState) _then)
      : super(_value, (v) => _then(v as _RunnerState));

  @override
  _RunnerState get _value => super._value as _RunnerState;

  @override
  $Res call({
    Object tasksProgress = freezed,
    Object visibleTask = freezed,
  }) {
    return _then(_RunnerState(
      tasksProgress: tasksProgress == freezed
          ? _value.tasksProgress
          : tasksProgress as Map<Task, TaskProgress>,
      visibleTask: visibleTask == freezed
          ? _value.visibleTask
          : visibleTask as Option<Task>,
    ));
  }
}

/// @nodoc
class _$_RunnerState implements _RunnerState {
  const _$_RunnerState(
      {@required this.tasksProgress, @required this.visibleTask})
      : assert(tasksProgress != null),
        assert(visibleTask != null);

  @override
  final Map<Task, TaskProgress> tasksProgress;
  @override
  final Option<Task> visibleTask;

  @override
  String toString() {
    return 'RunnerState(tasksProgress: $tasksProgress, visibleTask: $visibleTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RunnerState &&
            (identical(other.tasksProgress, tasksProgress) ||
                const DeepCollectionEquality()
                    .equals(other.tasksProgress, tasksProgress)) &&
            (identical(other.visibleTask, visibleTask) ||
                const DeepCollectionEquality()
                    .equals(other.visibleTask, visibleTask)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tasksProgress) ^
      const DeepCollectionEquality().hash(visibleTask);

  @JsonKey(ignore: true)
  @override
  _$RunnerStateCopyWith<_RunnerState> get copyWith =>
      __$RunnerStateCopyWithImpl<_RunnerState>(this, _$identity);
}

abstract class _RunnerState implements RunnerState {
  const factory _RunnerState(
      {@required Map<Task, TaskProgress> tasksProgress,
      @required Option<Task> visibleTask}) = _$_RunnerState;

  @override
  Map<Task, TaskProgress> get tasksProgress;
  @override
  Option<Task> get visibleTask;
  @override
  @JsonKey(ignore: true)
  _$RunnerStateCopyWith<_RunnerState> get copyWith;
}
