// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_instance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddInstanceResponse _$AddInstanceResponseFromJson(Map<String, dynamic> json) {
  return _AddInstanceResponse.fromJson(json);
}

/// @nodoc
class _$AddInstanceResponseTearOff {
  const _$AddInstanceResponseTearOff();

// ignore: unused_element
  _AddInstanceResponse call(
      {@required bool success,
      @required int maxInstances,
      @required String error}) {
    return _AddInstanceResponse(
      success: success,
      maxInstances: maxInstances,
      error: error,
    );
  }

// ignore: unused_element
  AddInstanceResponse fromJson(Map<String, Object> json) {
    return AddInstanceResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddInstanceResponse = _$AddInstanceResponseTearOff();

/// @nodoc
mixin _$AddInstanceResponse {
  bool get success;
  int get maxInstances;
  String get error;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AddInstanceResponseCopyWith<AddInstanceResponse> get copyWith;
}

/// @nodoc
abstract class $AddInstanceResponseCopyWith<$Res> {
  factory $AddInstanceResponseCopyWith(
          AddInstanceResponse value, $Res Function(AddInstanceResponse) then) =
      _$AddInstanceResponseCopyWithImpl<$Res>;
  $Res call({bool success, int maxInstances, String error});
}

/// @nodoc
class _$AddInstanceResponseCopyWithImpl<$Res>
    implements $AddInstanceResponseCopyWith<$Res> {
  _$AddInstanceResponseCopyWithImpl(this._value, this._then);

  final AddInstanceResponse _value;
  // ignore: unused_field
  final $Res Function(AddInstanceResponse) _then;

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
abstract class _$AddInstanceResponseCopyWith<$Res>
    implements $AddInstanceResponseCopyWith<$Res> {
  factory _$AddInstanceResponseCopyWith(_AddInstanceResponse value,
          $Res Function(_AddInstanceResponse) then) =
      __$AddInstanceResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, int maxInstances, String error});
}

/// @nodoc
class __$AddInstanceResponseCopyWithImpl<$Res>
    extends _$AddInstanceResponseCopyWithImpl<$Res>
    implements _$AddInstanceResponseCopyWith<$Res> {
  __$AddInstanceResponseCopyWithImpl(
      _AddInstanceResponse _value, $Res Function(_AddInstanceResponse) _then)
      : super(_value, (v) => _then(v as _AddInstanceResponse));

  @override
  _AddInstanceResponse get _value => super._value as _AddInstanceResponse;

  @override
  $Res call({
    Object success = freezed,
    Object maxInstances = freezed,
    Object error = freezed,
  }) {
    return _then(_AddInstanceResponse(
      success: success == freezed ? _value.success : success as bool,
      maxInstances:
          maxInstances == freezed ? _value.maxInstances : maxInstances as int,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddInstanceResponse implements _AddInstanceResponse {
  const _$_AddInstanceResponse(
      {@required this.success,
      @required this.maxInstances,
      @required this.error})
      : assert(success != null),
        assert(maxInstances != null),
        assert(error != null);

  factory _$_AddInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AddInstanceResponseFromJson(json);

  @override
  final bool success;
  @override
  final int maxInstances;
  @override
  final String error;

  @override
  String toString() {
    return 'AddInstanceResponse(success: $success, maxInstances: $maxInstances, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddInstanceResponse &&
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
  _$AddInstanceResponseCopyWith<_AddInstanceResponse> get copyWith =>
      __$AddInstanceResponseCopyWithImpl<_AddInstanceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddInstanceResponseToJson(this);
  }
}

abstract class _AddInstanceResponse implements AddInstanceResponse {
  const factory _AddInstanceResponse(
      {@required bool success,
      @required int maxInstances,
      @required String error}) = _$_AddInstanceResponse;

  factory _AddInstanceResponse.fromJson(Map<String, dynamic> json) =
      _$_AddInstanceResponse.fromJson;

  @override
  bool get success;
  @override
  int get maxInstances;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$AddInstanceResponseCopyWith<_AddInstanceResponse> get copyWith;
}
