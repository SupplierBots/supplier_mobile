// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskProgressTearOff {
  const _$TaskProgressTearOff();

// ignore: unused_element
  _TaskProgress call({@required String message, @required TaskAction action}) {
    return _TaskProgress(
      message: message,
      action: action,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskProgress = _$TaskProgressTearOff();

/// @nodoc
mixin _$TaskProgress {
  String get message;
  TaskAction get action;

  @JsonKey(ignore: true)
  $TaskProgressCopyWith<TaskProgress> get copyWith;
}

/// @nodoc
abstract class $TaskProgressCopyWith<$Res> {
  factory $TaskProgressCopyWith(
          TaskProgress value, $Res Function(TaskProgress) then) =
      _$TaskProgressCopyWithImpl<$Res>;
  $Res call({String message, TaskAction action});
}

/// @nodoc
class _$TaskProgressCopyWithImpl<$Res> implements $TaskProgressCopyWith<$Res> {
  _$TaskProgressCopyWithImpl(this._value, this._then);

  final TaskProgress _value;
  // ignore: unused_field
  final $Res Function(TaskProgress) _then;

  @override
  $Res call({
    Object message = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      action: action == freezed ? _value.action : action as TaskAction,
    ));
  }
}

/// @nodoc
abstract class _$TaskProgressCopyWith<$Res>
    implements $TaskProgressCopyWith<$Res> {
  factory _$TaskProgressCopyWith(
          _TaskProgress value, $Res Function(_TaskProgress) then) =
      __$TaskProgressCopyWithImpl<$Res>;
  @override
  $Res call({String message, TaskAction action});
}

/// @nodoc
class __$TaskProgressCopyWithImpl<$Res> extends _$TaskProgressCopyWithImpl<$Res>
    implements _$TaskProgressCopyWith<$Res> {
  __$TaskProgressCopyWithImpl(
      _TaskProgress _value, $Res Function(_TaskProgress) _then)
      : super(_value, (v) => _then(v as _TaskProgress));

  @override
  _TaskProgress get _value => super._value as _TaskProgress;

  @override
  $Res call({
    Object message = freezed,
    Object action = freezed,
  }) {
    return _then(_TaskProgress(
      message: message == freezed ? _value.message : message as String,
      action: action == freezed ? _value.action : action as TaskAction,
    ));
  }
}

/// @nodoc
class _$_TaskProgress implements _TaskProgress {
  const _$_TaskProgress({@required this.message, @required this.action})
      : assert(message != null),
        assert(action != null);

  @override
  final String message;
  @override
  final TaskAction action;

  @override
  String toString() {
    return 'TaskProgress(message: $message, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskProgress &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$TaskProgressCopyWith<_TaskProgress> get copyWith =>
      __$TaskProgressCopyWithImpl<_TaskProgress>(this, _$identity);
}

abstract class _TaskProgress implements TaskProgress {
  const factory _TaskProgress(
      {@required String message,
      @required TaskAction action}) = _$_TaskProgress;

  @override
  String get message;
  @override
  TaskAction get action;
  @override
  @JsonKey(ignore: true)
  _$TaskProgressCopyWith<_TaskProgress> get copyWith;
}
