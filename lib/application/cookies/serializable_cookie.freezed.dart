// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'serializable_cookie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SerializableCookie _$SerializableCookieFromJson(Map<String, dynamic> json) {
  return _SerializableCookie.fromJson(json);
}

/// @nodoc
class _$SerializableCookieTearOff {
  const _$SerializableCookieTearOff();

// ignore: unused_element
  _SerializableCookie call(
      {String name,
      dynamic value,
      int expiresDate,
      bool isSessionOnly,
      String domain,
      String sameSite,
      bool isSecure,
      bool isHttpOnly,
      String path}) {
    return _SerializableCookie(
      name: name,
      value: value,
      expiresDate: expiresDate,
      isSessionOnly: isSessionOnly,
      domain: domain,
      sameSite: sameSite,
      isSecure: isSecure,
      isHttpOnly: isHttpOnly,
      path: path,
    );
  }

// ignore: unused_element
  SerializableCookie fromJson(Map<String, Object> json) {
    return SerializableCookie.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SerializableCookie = _$SerializableCookieTearOff();

/// @nodoc
mixin _$SerializableCookie {
  String get name;
  dynamic get value;
  int get expiresDate;
  bool get isSessionOnly;
  String get domain;
  String get sameSite;
  bool get isSecure;
  bool get isHttpOnly;
  String get path;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SerializableCookieCopyWith<SerializableCookie> get copyWith;
}

/// @nodoc
abstract class $SerializableCookieCopyWith<$Res> {
  factory $SerializableCookieCopyWith(
          SerializableCookie value, $Res Function(SerializableCookie) then) =
      _$SerializableCookieCopyWithImpl<$Res>;
  $Res call(
      {String name,
      dynamic value,
      int expiresDate,
      bool isSessionOnly,
      String domain,
      String sameSite,
      bool isSecure,
      bool isHttpOnly,
      String path});
}

/// @nodoc
class _$SerializableCookieCopyWithImpl<$Res>
    implements $SerializableCookieCopyWith<$Res> {
  _$SerializableCookieCopyWithImpl(this._value, this._then);

  final SerializableCookie _value;
  // ignore: unused_field
  final $Res Function(SerializableCookie) _then;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
    Object expiresDate = freezed,
    Object isSessionOnly = freezed,
    Object domain = freezed,
    Object sameSite = freezed,
    Object isSecure = freezed,
    Object isHttpOnly = freezed,
    Object path = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as dynamic,
      expiresDate:
          expiresDate == freezed ? _value.expiresDate : expiresDate as int,
      isSessionOnly: isSessionOnly == freezed
          ? _value.isSessionOnly
          : isSessionOnly as bool,
      domain: domain == freezed ? _value.domain : domain as String,
      sameSite: sameSite == freezed ? _value.sameSite : sameSite as String,
      isSecure: isSecure == freezed ? _value.isSecure : isSecure as bool,
      isHttpOnly:
          isHttpOnly == freezed ? _value.isHttpOnly : isHttpOnly as bool,
      path: path == freezed ? _value.path : path as String,
    ));
  }
}

/// @nodoc
abstract class _$SerializableCookieCopyWith<$Res>
    implements $SerializableCookieCopyWith<$Res> {
  factory _$SerializableCookieCopyWith(
          _SerializableCookie value, $Res Function(_SerializableCookie) then) =
      __$SerializableCookieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      dynamic value,
      int expiresDate,
      bool isSessionOnly,
      String domain,
      String sameSite,
      bool isSecure,
      bool isHttpOnly,
      String path});
}

/// @nodoc
class __$SerializableCookieCopyWithImpl<$Res>
    extends _$SerializableCookieCopyWithImpl<$Res>
    implements _$SerializableCookieCopyWith<$Res> {
  __$SerializableCookieCopyWithImpl(
      _SerializableCookie _value, $Res Function(_SerializableCookie) _then)
      : super(_value, (v) => _then(v as _SerializableCookie));

  @override
  _SerializableCookie get _value => super._value as _SerializableCookie;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
    Object expiresDate = freezed,
    Object isSessionOnly = freezed,
    Object domain = freezed,
    Object sameSite = freezed,
    Object isSecure = freezed,
    Object isHttpOnly = freezed,
    Object path = freezed,
  }) {
    return _then(_SerializableCookie(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as dynamic,
      expiresDate:
          expiresDate == freezed ? _value.expiresDate : expiresDate as int,
      isSessionOnly: isSessionOnly == freezed
          ? _value.isSessionOnly
          : isSessionOnly as bool,
      domain: domain == freezed ? _value.domain : domain as String,
      sameSite: sameSite == freezed ? _value.sameSite : sameSite as String,
      isSecure: isSecure == freezed ? _value.isSecure : isSecure as bool,
      isHttpOnly:
          isHttpOnly == freezed ? _value.isHttpOnly : isHttpOnly as bool,
      path: path == freezed ? _value.path : path as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SerializableCookie extends _SerializableCookie {
  const _$_SerializableCookie(
      {this.name,
      this.value,
      this.expiresDate,
      this.isSessionOnly,
      this.domain,
      this.sameSite,
      this.isSecure,
      this.isHttpOnly,
      this.path})
      : super._();

  factory _$_SerializableCookie.fromJson(Map<String, dynamic> json) =>
      _$_$_SerializableCookieFromJson(json);

  @override
  final String name;
  @override
  final dynamic value;
  @override
  final int expiresDate;
  @override
  final bool isSessionOnly;
  @override
  final String domain;
  @override
  final String sameSite;
  @override
  final bool isSecure;
  @override
  final bool isHttpOnly;
  @override
  final String path;

  @override
  String toString() {
    return 'SerializableCookie(name: $name, value: $value, expiresDate: $expiresDate, isSessionOnly: $isSessionOnly, domain: $domain, sameSite: $sameSite, isSecure: $isSecure, isHttpOnly: $isHttpOnly, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SerializableCookie &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.expiresDate, expiresDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiresDate, expiresDate)) &&
            (identical(other.isSessionOnly, isSessionOnly) ||
                const DeepCollectionEquality()
                    .equals(other.isSessionOnly, isSessionOnly)) &&
            (identical(other.domain, domain) ||
                const DeepCollectionEquality().equals(other.domain, domain)) &&
            (identical(other.sameSite, sameSite) ||
                const DeepCollectionEquality()
                    .equals(other.sameSite, sameSite)) &&
            (identical(other.isSecure, isSecure) ||
                const DeepCollectionEquality()
                    .equals(other.isSecure, isSecure)) &&
            (identical(other.isHttpOnly, isHttpOnly) ||
                const DeepCollectionEquality()
                    .equals(other.isHttpOnly, isHttpOnly)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(expiresDate) ^
      const DeepCollectionEquality().hash(isSessionOnly) ^
      const DeepCollectionEquality().hash(domain) ^
      const DeepCollectionEquality().hash(sameSite) ^
      const DeepCollectionEquality().hash(isSecure) ^
      const DeepCollectionEquality().hash(isHttpOnly) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$SerializableCookieCopyWith<_SerializableCookie> get copyWith =>
      __$SerializableCookieCopyWithImpl<_SerializableCookie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SerializableCookieToJson(this);
  }
}

abstract class _SerializableCookie extends SerializableCookie {
  const _SerializableCookie._() : super._();
  const factory _SerializableCookie(
      {String name,
      dynamic value,
      int expiresDate,
      bool isSessionOnly,
      String domain,
      String sameSite,
      bool isSecure,
      bool isHttpOnly,
      String path}) = _$_SerializableCookie;

  factory _SerializableCookie.fromJson(Map<String, dynamic> json) =
      _$_SerializableCookie.fromJson;

  @override
  String get name;
  @override
  dynamic get value;
  @override
  int get expiresDate;
  @override
  bool get isSessionOnly;
  @override
  String get domain;
  @override
  String get sameSite;
  @override
  bool get isSecure;
  @override
  bool get isHttpOnly;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$SerializableCookieCopyWith<_SerializableCookie> get copyWith;
}
