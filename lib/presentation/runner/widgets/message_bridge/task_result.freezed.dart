// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskResult _$TaskResultFromJson(Map<String, dynamic> json) {
  return _TaskResult.fromJson(json);
}

/// @nodoc
class _$TaskResultTearOff {
  const _$TaskResultTearOff();

// ignore: unused_element
  _TaskResult call(
      {@required String status,
      @required String message,
      @required List<String> modifiedButtons,
      @required Timestamps timestamps,
      @required ProcessingDetails processingDetails}) {
    return _TaskResult(
      status: status,
      message: message,
      modifiedButtons: modifiedButtons,
      timestamps: timestamps,
      processingDetails: processingDetails,
    );
  }

// ignore: unused_element
  TaskResult fromJson(Map<String, Object> json) {
    return TaskResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TaskResult = _$TaskResultTearOff();

/// @nodoc
mixin _$TaskResult {
  String get status;
  String get message;
  List<String> get modifiedButtons;
  Timestamps get timestamps;
  ProcessingDetails get processingDetails;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TaskResultCopyWith<TaskResult> get copyWith;
}

/// @nodoc
abstract class $TaskResultCopyWith<$Res> {
  factory $TaskResultCopyWith(
          TaskResult value, $Res Function(TaskResult) then) =
      _$TaskResultCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String message,
      List<String> modifiedButtons,
      Timestamps timestamps,
      ProcessingDetails processingDetails});

  $TimestampsCopyWith<$Res> get timestamps;
  $ProcessingDetailsCopyWith<$Res> get processingDetails;
}

/// @nodoc
class _$TaskResultCopyWithImpl<$Res> implements $TaskResultCopyWith<$Res> {
  _$TaskResultCopyWithImpl(this._value, this._then);

  final TaskResult _value;
  // ignore: unused_field
  final $Res Function(TaskResult) _then;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
    Object modifiedButtons = freezed,
    Object timestamps = freezed,
    Object processingDetails = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as String,
      message: message == freezed ? _value.message : message as String,
      modifiedButtons: modifiedButtons == freezed
          ? _value.modifiedButtons
          : modifiedButtons as List<String>,
      timestamps:
          timestamps == freezed ? _value.timestamps : timestamps as Timestamps,
      processingDetails: processingDetails == freezed
          ? _value.processingDetails
          : processingDetails as ProcessingDetails,
    ));
  }

  @override
  $TimestampsCopyWith<$Res> get timestamps {
    if (_value.timestamps == null) {
      return null;
    }
    return $TimestampsCopyWith<$Res>(_value.timestamps, (value) {
      return _then(_value.copyWith(timestamps: value));
    });
  }

  @override
  $ProcessingDetailsCopyWith<$Res> get processingDetails {
    if (_value.processingDetails == null) {
      return null;
    }
    return $ProcessingDetailsCopyWith<$Res>(_value.processingDetails, (value) {
      return _then(_value.copyWith(processingDetails: value));
    });
  }
}

/// @nodoc
abstract class _$TaskResultCopyWith<$Res> implements $TaskResultCopyWith<$Res> {
  factory _$TaskResultCopyWith(
          _TaskResult value, $Res Function(_TaskResult) then) =
      __$TaskResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String message,
      List<String> modifiedButtons,
      Timestamps timestamps,
      ProcessingDetails processingDetails});

  @override
  $TimestampsCopyWith<$Res> get timestamps;
  @override
  $ProcessingDetailsCopyWith<$Res> get processingDetails;
}

/// @nodoc
class __$TaskResultCopyWithImpl<$Res> extends _$TaskResultCopyWithImpl<$Res>
    implements _$TaskResultCopyWith<$Res> {
  __$TaskResultCopyWithImpl(
      _TaskResult _value, $Res Function(_TaskResult) _then)
      : super(_value, (v) => _then(v as _TaskResult));

  @override
  _TaskResult get _value => super._value as _TaskResult;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
    Object modifiedButtons = freezed,
    Object timestamps = freezed,
    Object processingDetails = freezed,
  }) {
    return _then(_TaskResult(
      status: status == freezed ? _value.status : status as String,
      message: message == freezed ? _value.message : message as String,
      modifiedButtons: modifiedButtons == freezed
          ? _value.modifiedButtons
          : modifiedButtons as List<String>,
      timestamps:
          timestamps == freezed ? _value.timestamps : timestamps as Timestamps,
      processingDetails: processingDetails == freezed
          ? _value.processingDetails
          : processingDetails as ProcessingDetails,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TaskResult implements _TaskResult {
  const _$_TaskResult(
      {@required this.status,
      @required this.message,
      @required this.modifiedButtons,
      @required this.timestamps,
      @required this.processingDetails})
      : assert(status != null),
        assert(message != null),
        assert(modifiedButtons != null),
        assert(timestamps != null),
        assert(processingDetails != null);

  factory _$_TaskResult.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskResultFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final List<String> modifiedButtons;
  @override
  final Timestamps timestamps;
  @override
  final ProcessingDetails processingDetails;

  @override
  String toString() {
    return 'TaskResult(status: $status, message: $message, modifiedButtons: $modifiedButtons, timestamps: $timestamps, processingDetails: $processingDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskResult &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.modifiedButtons, modifiedButtons) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedButtons, modifiedButtons)) &&
            (identical(other.timestamps, timestamps) ||
                const DeepCollectionEquality()
                    .equals(other.timestamps, timestamps)) &&
            (identical(other.processingDetails, processingDetails) ||
                const DeepCollectionEquality()
                    .equals(other.processingDetails, processingDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(modifiedButtons) ^
      const DeepCollectionEquality().hash(timestamps) ^
      const DeepCollectionEquality().hash(processingDetails);

  @JsonKey(ignore: true)
  @override
  _$TaskResultCopyWith<_TaskResult> get copyWith =>
      __$TaskResultCopyWithImpl<_TaskResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskResultToJson(this);
  }
}

abstract class _TaskResult implements TaskResult {
  const factory _TaskResult(
      {@required String status,
      @required String message,
      @required List<String> modifiedButtons,
      @required Timestamps timestamps,
      @required ProcessingDetails processingDetails}) = _$_TaskResult;

  factory _TaskResult.fromJson(Map<String, dynamic> json) =
      _$_TaskResult.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  List<String> get modifiedButtons;
  @override
  Timestamps get timestamps;
  @override
  ProcessingDetails get processingDetails;
  @override
  @JsonKey(ignore: true)
  _$TaskResultCopyWith<_TaskResult> get copyWith;
}
