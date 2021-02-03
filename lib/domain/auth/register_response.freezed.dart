// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
class _$RegisterResponseTearOff {
  const _$RegisterResponseTearOff();

// ignore: unused_element
  _RegisterResponse call({@required bool success, @required String message}) {
    return _RegisterResponse(
      success: success,
      message: message,
    );
  }

// ignore: unused_element
  RegisterResponse fromJson(Map<String, Object> json) {
    return RegisterResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterResponse = _$RegisterResponseTearOff();

/// @nodoc
mixin _$RegisterResponse {
  bool get success;
  String get message;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res>;
  $Res call({bool success, String message});
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  final RegisterResponse _value;
  // ignore: unused_field
  final $Res Function(RegisterResponse) _then;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterResponseCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$RegisterResponseCopyWith(
          _RegisterResponse value, $Res Function(_RegisterResponse) then) =
      __$RegisterResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String message});
}

/// @nodoc
class __$RegisterResponseCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res>
    implements _$RegisterResponseCopyWith<$Res> {
  __$RegisterResponseCopyWithImpl(
      _RegisterResponse _value, $Res Function(_RegisterResponse) _then)
      : super(_value, (v) => _then(v as _RegisterResponse));

  @override
  _RegisterResponse get _value => super._value as _RegisterResponse;

  @override
  $Res call({
    Object success = freezed,
    Object message = freezed,
  }) {
    return _then(_RegisterResponse(
      success: success == freezed ? _value.success : success as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RegisterResponse implements _RegisterResponse {
  const _$_RegisterResponse({@required this.success, @required this.message})
      : assert(success != null),
        assert(message != null);

  factory _$_RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterResponseFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'RegisterResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$RegisterResponseCopyWith<_RegisterResponse> get copyWith =>
      __$RegisterResponseCopyWithImpl<_RegisterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterResponseToJson(this);
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  const factory _RegisterResponse(
      {@required bool success, @required String message}) = _$_RegisterResponse;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponse.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$RegisterResponseCopyWith<_RegisterResponse> get copyWith;
}
