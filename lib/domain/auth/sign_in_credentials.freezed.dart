// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignInCredentials _$SignInCredentialsFromJson(Map<String, dynamic> json) {
  return _SignInCredentials.fromJson(json);
}

/// @nodoc
class _$SignInCredentialsTearOff {
  const _$SignInCredentialsTearOff();

// ignore: unused_element
  _SignInCredentials call({@required String email, @required String password}) {
    return _SignInCredentials(
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  SignInCredentials fromJson(Map<String, Object> json) {
    return SignInCredentials.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SignInCredentials = _$SignInCredentialsTearOff();

/// @nodoc
mixin _$SignInCredentials {
  String get email;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SignInCredentialsCopyWith<SignInCredentials> get copyWith;
}

/// @nodoc
abstract class $SignInCredentialsCopyWith<$Res> {
  factory $SignInCredentialsCopyWith(
          SignInCredentials value, $Res Function(SignInCredentials) then) =
      _$SignInCredentialsCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInCredentialsCopyWithImpl<$Res>
    implements $SignInCredentialsCopyWith<$Res> {
  _$SignInCredentialsCopyWithImpl(this._value, this._then);

  final SignInCredentials _value;
  // ignore: unused_field
  final $Res Function(SignInCredentials) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInCredentialsCopyWith<$Res>
    implements $SignInCredentialsCopyWith<$Res> {
  factory _$SignInCredentialsCopyWith(
          _SignInCredentials value, $Res Function(_SignInCredentials) then) =
      __$SignInCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInCredentialsCopyWithImpl<$Res>
    extends _$SignInCredentialsCopyWithImpl<$Res>
    implements _$SignInCredentialsCopyWith<$Res> {
  __$SignInCredentialsCopyWithImpl(
      _SignInCredentials _value, $Res Function(_SignInCredentials) _then)
      : super(_value, (v) => _then(v as _SignInCredentials));

  @override
  _SignInCredentials get _value => super._value as _SignInCredentials;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_SignInCredentials(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SignInCredentials implements _SignInCredentials {
  const _$_SignInCredentials({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null);

  factory _$_SignInCredentials.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInCredentialsFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInCredentials(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInCredentials &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInCredentialsCopyWith<_SignInCredentials> get copyWith =>
      __$SignInCredentialsCopyWithImpl<_SignInCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInCredentialsToJson(this);
  }
}

abstract class _SignInCredentials implements SignInCredentials {
  const factory _SignInCredentials(
      {@required String email,
      @required String password}) = _$_SignInCredentials;

  factory _SignInCredentials.fromJson(Map<String, dynamic> json) =
      _$_SignInCredentials.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$SignInCredentialsCopyWith<_SignInCredentials> get copyWith;
}
