// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'instances_check_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InstancesCheckResponse _$InstancesCheckResponseFromJson(
    Map<String, dynamic> json) {
  return _InstancesCheckResponse.fromJson(json);
}

/// @nodoc
class _$InstancesCheckResponseTearOff {
  const _$InstancesCheckResponseTearOff();

// ignore: unused_element
  _InstancesCheckResponse call(
      {@required bool success,
      @required int maxInstances,
      @required String error}) {
    return _InstancesCheckResponse(
      success: success,
      maxInstances: maxInstances,
      error: error,
    );
  }

// ignore: unused_element
  InstancesCheckResponse fromJson(Map<String, Object> json) {
    return InstancesCheckResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InstancesCheckResponse = _$InstancesCheckResponseTearOff();

/// @nodoc
mixin _$InstancesCheckResponse {
  bool get success;
  int get maxInstances;
  String get error;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $InstancesCheckResponseCopyWith<InstancesCheckResponse> get copyWith;
}

/// @nodoc
abstract class $InstancesCheckResponseCopyWith<$Res> {
  factory $InstancesCheckResponseCopyWith(InstancesCheckResponse value,
          $Res Function(InstancesCheckResponse) then) =
      _$InstancesCheckResponseCopyWithImpl<$Res>;
  $Res call({bool success, int maxInstances, String error});
}

/// @nodoc
class _$InstancesCheckResponseCopyWithImpl<$Res>
    implements $InstancesCheckResponseCopyWith<$Res> {
  _$InstancesCheckResponseCopyWithImpl(this._value, this._then);

  final InstancesCheckResponse _value;
  // ignore: unused_field
  final $Res Function(InstancesCheckResponse) _then;

  @override
  $Res call({
    Object success = freezed,
    Object maxInstances = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      maxInstances:
          maxInstances == freezed ? _value.maxInstances : maxInstances as int,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$InstancesCheckResponseCopyWith<$Res>
    implements $InstancesCheckResponseCopyWith<$Res> {
  factory _$InstancesCheckResponseCopyWith(_InstancesCheckResponse value,
          $Res Function(_InstancesCheckResponse) then) =
      __$InstancesCheckResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, int maxInstances, String error});
}

/// @nodoc
class __$InstancesCheckResponseCopyWithImpl<$Res>
    extends _$InstancesCheckResponseCopyWithImpl<$Res>
    implements _$InstancesCheckResponseCopyWith<$Res> {
  __$InstancesCheckResponseCopyWithImpl(_InstancesCheckResponse _value,
      $Res Function(_InstancesCheckResponse) _then)
      : super(_value, (v) => _then(v as _InstancesCheckResponse));

  @override
  _InstancesCheckResponse get _value => super._value as _InstancesCheckResponse;

  @override
  $Res call({
    Object success = freezed,
    Object maxInstances = freezed,
    Object error = freezed,
  }) {
    return _then(_InstancesCheckResponse(
      success: success == freezed ? _value.success : success as bool,
      maxInstances:
          maxInstances == freezed ? _value.maxInstances : maxInstances as int,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InstancesCheckResponse implements _InstancesCheckResponse {
  const _$_InstancesCheckResponse(
      {@required this.success,
      @required this.maxInstances,
      @required this.error})
      : assert(success != null),
        assert(maxInstances != null),
        assert(error != null);

  factory _$_InstancesCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_InstancesCheckResponseFromJson(json);

  @override
  final bool success;
  @override
  final int maxInstances;
  @override
  final String error;

  @override
  String toString() {
    return 'InstancesCheckResponse(success: $success, maxInstances: $maxInstances, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InstancesCheckResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.maxInstances, maxInstances) ||
                const DeepCollectionEquality()
                    .equals(other.maxInstances, maxInstances)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(maxInstances) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$InstancesCheckResponseCopyWith<_InstancesCheckResponse> get copyWith =>
      __$InstancesCheckResponseCopyWithImpl<_InstancesCheckResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InstancesCheckResponseToJson(this);
  }
}

abstract class _InstancesCheckResponse implements InstancesCheckResponse {
  const factory _InstancesCheckResponse(
      {@required bool success,
      @required int maxInstances,
      @required String error}) = _$_InstancesCheckResponse;

  factory _InstancesCheckResponse.fromJson(Map<String, dynamic> json) =
      _$_InstancesCheckResponse.fromJson;

  @override
  bool get success;
  @override
  int get maxInstances;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$InstancesCheckResponseCopyWith<_InstancesCheckResponse> get copyWith;
}
