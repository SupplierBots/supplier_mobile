// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  InvalidCredentials invalidCredentials() {
    return const InvalidCredentials();
  }

// ignore: unused_element
  IncorrectLicense incorrectLicense() {
    return const IncorrectLicense();
  }

// ignore: unused_element
  MaxInstancesNumberExceeded maxInstancesNumberExceeded(int maxInstances) {
    return MaxInstancesNumberExceeded(
      maxInstances,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidCredentials(),
    @required TResult incorrectLicense(),
    @required TResult maxInstancesNumberExceeded(int maxInstances),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidCredentials(),
    TResult incorrectLicense(),
    TResult maxInstancesNumberExceeded(int maxInstances),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidCredentials(InvalidCredentials value),
    @required TResult incorrectLicense(IncorrectLicense value),
    @required
        TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidCredentials(InvalidCredentials value),
    TResult incorrectLicense(IncorrectLicense value),
    TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidCredentials(),
    @required TResult incorrectLicense(),
    @required TResult maxInstancesNumberExceeded(int maxInstances),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidCredentials(),
    TResult incorrectLicense(),
    TResult maxInstancesNumberExceeded(int maxInstances),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidCredentials(InvalidCredentials value),
    @required TResult incorrectLicense(IncorrectLicense value),
    @required
        TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidCredentials(InvalidCredentials value),
    TResult incorrectLicense(IncorrectLicense value),
    TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc
class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidCredentials(),
    @required TResult incorrectLicense(),
    @required TResult maxInstancesNumberExceeded(int maxInstances),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidCredentials(),
    TResult incorrectLicense(),
    TResult maxInstancesNumberExceeded(int maxInstances),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidCredentials(InvalidCredentials value),
    @required TResult incorrectLicense(IncorrectLicense value),
    @required
        TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidCredentials(InvalidCredentials value),
    TResult incorrectLicense(IncorrectLicense value),
    TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $InvalidCredentialsCopyWith<$Res> {
  factory $InvalidCredentialsCopyWith(
          InvalidCredentials value, $Res Function(InvalidCredentials) then) =
      _$InvalidCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidCredentialsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidCredentialsCopyWith<$Res> {
  _$InvalidCredentialsCopyWithImpl(
      InvalidCredentials _value, $Res Function(InvalidCredentials) _then)
      : super(_value, (v) => _then(v as InvalidCredentials));

  @override
  InvalidCredentials get _value => super._value as InvalidCredentials;
}

/// @nodoc
class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidCredentials(),
    @required TResult incorrectLicense(),
    @required TResult maxInstancesNumberExceeded(int maxInstances),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidCredentials(),
    TResult incorrectLicense(),
    TResult maxInstancesNumberExceeded(int maxInstances),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidCredentials(InvalidCredentials value),
    @required TResult incorrectLicense(IncorrectLicense value),
    @required
        TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidCredentials(InvalidCredentials value),
    TResult incorrectLicense(IncorrectLicense value),
    TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements AuthFailure {
  const factory InvalidCredentials() = _$InvalidCredentials;
}

/// @nodoc
abstract class $IncorrectLicenseCopyWith<$Res> {
  factory $IncorrectLicenseCopyWith(
          IncorrectLicense value, $Res Function(IncorrectLicense) then) =
      _$IncorrectLicenseCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncorrectLicenseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $IncorrectLicenseCopyWith<$Res> {
  _$IncorrectLicenseCopyWithImpl(
      IncorrectLicense _value, $Res Function(IncorrectLicense) _then)
      : super(_value, (v) => _then(v as IncorrectLicense));

  @override
  IncorrectLicense get _value => super._value as IncorrectLicense;
}

/// @nodoc
class _$IncorrectLicense implements IncorrectLicense {
  const _$IncorrectLicense();

  @override
  String toString() {
    return 'AuthFailure.incorrectLicense()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncorrectLicense);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidCredentials(),
    @required TResult incorrectLicense(),
    @required TResult maxInstancesNumberExceeded(int maxInstances),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return incorrectLicense();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidCredentials(),
    TResult incorrectLicense(),
    TResult maxInstancesNumberExceeded(int maxInstances),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (incorrectLicense != null) {
      return incorrectLicense();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidCredentials(InvalidCredentials value),
    @required TResult incorrectLicense(IncorrectLicense value),
    @required
        TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return incorrectLicense(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidCredentials(InvalidCredentials value),
    TResult incorrectLicense(IncorrectLicense value),
    TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (incorrectLicense != null) {
      return incorrectLicense(this);
    }
    return orElse();
  }
}

abstract class IncorrectLicense implements AuthFailure {
  const factory IncorrectLicense() = _$IncorrectLicense;
}

/// @nodoc
abstract class $MaxInstancesNumberExceededCopyWith<$Res> {
  factory $MaxInstancesNumberExceededCopyWith(MaxInstancesNumberExceeded value,
          $Res Function(MaxInstancesNumberExceeded) then) =
      _$MaxInstancesNumberExceededCopyWithImpl<$Res>;
  $Res call({int maxInstances});
}

/// @nodoc
class _$MaxInstancesNumberExceededCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $MaxInstancesNumberExceededCopyWith<$Res> {
  _$MaxInstancesNumberExceededCopyWithImpl(MaxInstancesNumberExceeded _value,
      $Res Function(MaxInstancesNumberExceeded) _then)
      : super(_value, (v) => _then(v as MaxInstancesNumberExceeded));

  @override
  MaxInstancesNumberExceeded get _value =>
      super._value as MaxInstancesNumberExceeded;

  @override
  $Res call({
    Object maxInstances = freezed,
  }) {
    return _then(MaxInstancesNumberExceeded(
      maxInstances == freezed ? _value.maxInstances : maxInstances as int,
    ));
  }
}

/// @nodoc
class _$MaxInstancesNumberExceeded implements MaxInstancesNumberExceeded {
  const _$MaxInstancesNumberExceeded(this.maxInstances)
      : assert(maxInstances != null);

  @override
  final int maxInstances;

  @override
  String toString() {
    return 'AuthFailure.maxInstancesNumberExceeded(maxInstances: $maxInstances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaxInstancesNumberExceeded &&
            (identical(other.maxInstances, maxInstances) ||
                const DeepCollectionEquality()
                    .equals(other.maxInstances, maxInstances)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(maxInstances);

  @JsonKey(ignore: true)
  @override
  $MaxInstancesNumberExceededCopyWith<MaxInstancesNumberExceeded>
      get copyWith =>
          _$MaxInstancesNumberExceededCopyWithImpl<MaxInstancesNumberExceeded>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidCredentials(),
    @required TResult incorrectLicense(),
    @required TResult maxInstancesNumberExceeded(int maxInstances),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return maxInstancesNumberExceeded(maxInstances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidCredentials(),
    TResult incorrectLicense(),
    TResult maxInstancesNumberExceeded(int maxInstances),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (maxInstancesNumberExceeded != null) {
      return maxInstancesNumberExceeded(maxInstances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidCredentials(InvalidCredentials value),
    @required TResult incorrectLicense(IncorrectLicense value),
    @required
        TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
  }) {
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidCredentials != null);
    assert(incorrectLicense != null);
    assert(maxInstancesNumberExceeded != null);
    return maxInstancesNumberExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidCredentials(InvalidCredentials value),
    TResult incorrectLicense(IncorrectLicense value),
    TResult maxInstancesNumberExceeded(MaxInstancesNumberExceeded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (maxInstancesNumberExceeded != null) {
      return maxInstancesNumberExceeded(this);
    }
    return orElse();
  }
}

abstract class MaxInstancesNumberExceeded implements AuthFailure {
  const factory MaxInstancesNumberExceeded(int maxInstances) =
      _$MaxInstancesNumberExceeded;

  int get maxInstances;
  @JsonKey(ignore: true)
  $MaxInstancesNumberExceededCopyWith<MaxInstancesNumberExceeded> get copyWith;
}
