// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remove_instance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RemoveInstanceResponse _$RemoveInstanceResponseFromJson(
    Map<String, dynamic> json) {
  return _RemoveInstanceResponse.fromJson(json);
}

/// @nodoc
class _$RemoveInstanceResponseTearOff {
  const _$RemoveInstanceResponseTearOff();

// ignore: unused_element
  _RemoveInstanceResponse call(
      {@required bool success, @required int activeInstances}) {
    return _RemoveInstanceResponse(
      success: success,
      activeInstances: activeInstances,
    );
  }

// ignore: unused_element
  RemoveInstanceResponse fromJson(Map<String, Object> json) {
    return RemoveInstanceResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveInstanceResponse = _$RemoveInstanceResponseTearOff();

/// @nodoc
mixin _$RemoveInstanceResponse {
  bool get success;
  int get activeInstances;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RemoveInstanceResponseCopyWith<RemoveInstanceResponse> get copyWith;
}

/// @nodoc
abstract class $RemoveInstanceResponseCopyWith<$Res> {
  factory $RemoveInstanceResponseCopyWith(RemoveInstanceResponse value,
          $Res Function(RemoveInstanceResponse) then) =
      _$RemoveInstanceResponseCopyWithImpl<$Res>;
  $Res call({bool success, int activeInstances});
}

/// @nodoc
class _$RemoveInstanceResponseCopyWithImpl<$Res>
    implements $RemoveInstanceResponseCopyWith<$Res> {
  _$RemoveInstanceResponseCopyWithImpl(this._value, this._then);

  final RemoveInstanceResponse _value;
  // ignore: unused_field
  final $Res Function(RemoveInstanceResponse) _then;

  @override
  $Res call({
    Object success = freezed,
    Object activeInstances = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed ? _value.success : success as bool,
      activeInstances: activeInstances == freezed
          ? _value.activeInstances
          : activeInstances as int,
    ));
  }
}

/// @nodoc
abstract class _$RemoveInstanceResponseCopyWith<$Res>
    implements $RemoveInstanceResponseCopyWith<$Res> {
  factory _$RemoveInstanceResponseCopyWith(_RemoveInstanceResponse value,
          $Res Function(_RemoveInstanceResponse) then) =
      __$RemoveInstanceResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, int activeInstances});
}

/// @nodoc
class __$RemoveInstanceResponseCopyWithImpl<$Res>
    extends _$RemoveInstanceResponseCopyWithImpl<$Res>
    implements _$RemoveInstanceResponseCopyWith<$Res> {
  __$RemoveInstanceResponseCopyWithImpl(_RemoveInstanceResponse _value,
      $Res Function(_RemoveInstanceResponse) _then)
      : super(_value, (v) => _then(v as _RemoveInstanceResponse));

  @override
  _RemoveInstanceResponse get _value => super._value as _RemoveInstanceResponse;

  @override
  $Res call({
    Object success = freezed,
    Object activeInstances = freezed,
  }) {
    return _then(_RemoveInstanceResponse(
      success: success == freezed ? _value.success : success as bool,
      activeInstances: activeInstances == freezed
          ? _value.activeInstances
          : activeInstances as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoveInstanceResponse implements _RemoveInstanceResponse {
  const _$_RemoveInstanceResponse(
      {@required this.success, @required this.activeInstances})
      : assert(success != null),
        assert(activeInstances != null);

  factory _$_RemoveInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoveInstanceResponseFromJson(json);

  @override
  final bool success;
  @override
  final int activeInstances;

  @override
  String toString() {
    return 'RemoveInstanceResponse(success: $success, activeInstances: $activeInstances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveInstanceResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.activeInstances, activeInstances) ||
                const DeepCollectionEquality()
                    .equals(other.activeInstances, activeInstances)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(activeInstances);

  @JsonKey(ignore: true)
  @override
  _$RemoveInstanceResponseCopyWith<_RemoveInstanceResponse> get copyWith =>
      __$RemoveInstanceResponseCopyWithImpl<_RemoveInstanceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoveInstanceResponseToJson(this);
  }
}

abstract class _RemoveInstanceResponse implements RemoveInstanceResponse {
  const factory _RemoveInstanceResponse(
      {@required bool success,
      @required int activeInstances}) = _$_RemoveInstanceResponse;

  factory _RemoveInstanceResponse.fromJson(Map<String, dynamic> json) =
      _$_RemoveInstanceResponse.fromJson;

  @override
  bool get success;
  @override
  int get activeInstances;
  @override
  @JsonKey(ignore: true)
  _$RemoveInstanceResponseCopyWith<_RemoveInstanceResponse> get copyWith;
}
