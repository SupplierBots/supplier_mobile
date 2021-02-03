// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RegisterCredentials _$RegisterCredentialsFromJson(Map<String, dynamic> json) {
  return _RegisterCredentials.fromJson(json);
}

/// @nodoc
class _$RegisterCredentialsTearOff {
  const _$RegisterCredentialsTearOff();

// ignore: unused_element
  _RegisterCredentials call(
      {@required String email,
      @required String password,
      @required String license}) {
    return _RegisterCredentials(
      email: email,
      password: password,
      license: license,
    );
  }

// ignore: unused_element
  RegisterCredentials fromJson(Map<String, Object> json) {
    return RegisterCredentials.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterCredentials = _$RegisterCredentialsTearOff();

/// @nodoc
mixin _$RegisterCredentials {
  String get email;
  String get password;
  String get license;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RegisterCredentialsCopyWith<RegisterCredentials> get copyWith;
}

/// @nodoc
abstract class $RegisterCredentialsCopyWith<$Res> {
  factory $RegisterCredentialsCopyWith(
          RegisterCredentials value, $Res Function(RegisterCredentials) then) =
      _$RegisterCredentialsCopyWithImpl<$Res>;
  $Res call({String email, String password, String license});
}

/// @nodoc
class _$RegisterCredentialsCopyWithImpl<$Res>
    implements $RegisterCredentialsCopyWith<$Res> {
  _$RegisterCredentialsCopyWithImpl(this._value, this._then);

  final RegisterCredentials _value;
  // ignore: unused_field
  final $Res Function(RegisterCredentials) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object license = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      license: license == freezed ? _value.license : license as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterCredentialsCopyWith<$Res>
    implements $RegisterCredentialsCopyWith<$Res> {
  factory _$RegisterCredentialsCopyWith(_RegisterCredentials value,
          $Res Function(_RegisterCredentials) then) =
      __$RegisterCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String license});
}

/// @nodoc
class __$RegisterCredentialsCopyWithImpl<$Res>
    extends _$RegisterCredentialsCopyWithImpl<$Res>
    implements _$RegisterCredentialsCopyWith<$Res> {
  __$RegisterCredentialsCopyWithImpl(
      _RegisterCredentials _value, $Res Function(_RegisterCredentials) _then)
      : super(_value, (v) => _then(v as _RegisterCredentials));

  @override
  _RegisterCredentials get _value => super._value as _RegisterCredentials;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object license = freezed,
  }) {
    return _then(_RegisterCredentials(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      license: license == freezed ? _value.license : license as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RegisterCredentials implements _RegisterCredentials {
  const _$_RegisterCredentials(
      {@required this.email, @required this.password, @required this.license})
      : assert(email != null),
        assert(password != null),
        assert(license != null);

  factory _$_RegisterCredentials.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterCredentialsFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String license;

  @override
  String toString() {
    return 'RegisterCredentials(email: $email, password: $password, license: $license)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterCredentials &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.license, license) ||
                const DeepCollectionEquality().equals(other.license, license)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(license);

  @JsonKey(ignore: true)
  @override
  _$RegisterCredentialsCopyWith<_RegisterCredentials> get copyWith =>
      __$RegisterCredentialsCopyWithImpl<_RegisterCredentials>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterCredentialsToJson(this);
  }
}

abstract class _RegisterCredentials implements RegisterCredentials {
  const factory _RegisterCredentials(
      {@required String email,
      @required String password,
      @required String license}) = _$_RegisterCredentials;

  factory _RegisterCredentials.fromJson(Map<String, dynamic> json) =
      _$_RegisterCredentials.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get license;
  @override
  @JsonKey(ignore: true)
  _$RegisterCredentialsCopyWith<_RegisterCredentials> get copyWith;
}
