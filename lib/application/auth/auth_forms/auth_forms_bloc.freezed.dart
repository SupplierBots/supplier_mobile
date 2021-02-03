// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_forms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFormsEventTearOff {
  const _$AuthFormsEventTearOff();

// ignore: unused_element
  SignInOrRegisterToggled signInOrRegisterToggled() {
    return const SignInOrRegisterToggled();
  }

// ignore: unused_element
  SignInPressed signInPressed(SignInCredentials credentials) {
    return SignInPressed(
      credentials,
    );
  }

// ignore: unused_element
  CreateAccountPressed createAccountPressed(RegisterCredentials credentials) {
    return CreateAccountPressed(
      credentials,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFormsEvent = _$AuthFormsEventTearOff();

/// @nodoc
mixin _$AuthFormsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signInOrRegisterToggled(),
    @required TResult signInPressed(SignInCredentials credentials),
    @required TResult createAccountPressed(RegisterCredentials credentials),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signInOrRegisterToggled(),
    TResult signInPressed(SignInCredentials credentials),
    TResult createAccountPressed(RegisterCredentials credentials),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    @required TResult signInPressed(SignInPressed value),
    @required TResult createAccountPressed(CreateAccountPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    TResult signInPressed(SignInPressed value),
    TResult createAccountPressed(CreateAccountPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFormsEventCopyWith<$Res> {
  factory $AuthFormsEventCopyWith(
          AuthFormsEvent value, $Res Function(AuthFormsEvent) then) =
      _$AuthFormsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFormsEventCopyWithImpl<$Res>
    implements $AuthFormsEventCopyWith<$Res> {
  _$AuthFormsEventCopyWithImpl(this._value, this._then);

  final AuthFormsEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFormsEvent) _then;
}

/// @nodoc
abstract class $SignInOrRegisterToggledCopyWith<$Res> {
  factory $SignInOrRegisterToggledCopyWith(SignInOrRegisterToggled value,
          $Res Function(SignInOrRegisterToggled) then) =
      _$SignInOrRegisterToggledCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInOrRegisterToggledCopyWithImpl<$Res>
    extends _$AuthFormsEventCopyWithImpl<$Res>
    implements $SignInOrRegisterToggledCopyWith<$Res> {
  _$SignInOrRegisterToggledCopyWithImpl(SignInOrRegisterToggled _value,
      $Res Function(SignInOrRegisterToggled) _then)
      : super(_value, (v) => _then(v as SignInOrRegisterToggled));

  @override
  SignInOrRegisterToggled get _value => super._value as SignInOrRegisterToggled;
}

/// @nodoc
class _$SignInOrRegisterToggled implements SignInOrRegisterToggled {
  const _$SignInOrRegisterToggled();

  @override
  String toString() {
    return 'AuthFormsEvent.signInOrRegisterToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInOrRegisterToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signInOrRegisterToggled(),
    @required TResult signInPressed(SignInCredentials credentials),
    @required TResult createAccountPressed(RegisterCredentials credentials),
  }) {
    assert(signInOrRegisterToggled != null);
    assert(signInPressed != null);
    assert(createAccountPressed != null);
    return signInOrRegisterToggled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signInOrRegisterToggled(),
    TResult signInPressed(SignInCredentials credentials),
    TResult createAccountPressed(RegisterCredentials credentials),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInOrRegisterToggled != null) {
      return signInOrRegisterToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    @required TResult signInPressed(SignInPressed value),
    @required TResult createAccountPressed(CreateAccountPressed value),
  }) {
    assert(signInOrRegisterToggled != null);
    assert(signInPressed != null);
    assert(createAccountPressed != null);
    return signInOrRegisterToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    TResult signInPressed(SignInPressed value),
    TResult createAccountPressed(CreateAccountPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInOrRegisterToggled != null) {
      return signInOrRegisterToggled(this);
    }
    return orElse();
  }
}

abstract class SignInOrRegisterToggled implements AuthFormsEvent {
  const factory SignInOrRegisterToggled() = _$SignInOrRegisterToggled;
}

/// @nodoc
abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
  $Res call({SignInCredentials credentials});

  $SignInCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class _$SignInPressedCopyWithImpl<$Res>
    extends _$AuthFormsEventCopyWithImpl<$Res>
    implements $SignInPressedCopyWith<$Res> {
  _$SignInPressedCopyWithImpl(
      SignInPressed _value, $Res Function(SignInPressed) _then)
      : super(_value, (v) => _then(v as SignInPressed));

  @override
  SignInPressed get _value => super._value as SignInPressed;

  @override
  $Res call({
    Object credentials = freezed,
  }) {
    return _then(SignInPressed(
      credentials == freezed
          ? _value.credentials
          : credentials as SignInCredentials,
    ));
  }

  @override
  $SignInCredentialsCopyWith<$Res> get credentials {
    if (_value.credentials == null) {
      return null;
    }
    return $SignInCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value));
    });
  }
}

/// @nodoc
class _$SignInPressed implements SignInPressed {
  const _$SignInPressed(this.credentials) : assert(credentials != null);

  @override
  final SignInCredentials credentials;

  @override
  String toString() {
    return 'AuthFormsEvent.signInPressed(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInPressed &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credentials);

  @JsonKey(ignore: true)
  @override
  $SignInPressedCopyWith<SignInPressed> get copyWith =>
      _$SignInPressedCopyWithImpl<SignInPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signInOrRegisterToggled(),
    @required TResult signInPressed(SignInCredentials credentials),
    @required TResult createAccountPressed(RegisterCredentials credentials),
  }) {
    assert(signInOrRegisterToggled != null);
    assert(signInPressed != null);
    assert(createAccountPressed != null);
    return signInPressed(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signInOrRegisterToggled(),
    TResult signInPressed(SignInCredentials credentials),
    TResult createAccountPressed(RegisterCredentials credentials),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInPressed != null) {
      return signInPressed(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    @required TResult signInPressed(SignInPressed value),
    @required TResult createAccountPressed(CreateAccountPressed value),
  }) {
    assert(signInOrRegisterToggled != null);
    assert(signInPressed != null);
    assert(createAccountPressed != null);
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    TResult signInPressed(SignInPressed value),
    TResult createAccountPressed(CreateAccountPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements AuthFormsEvent {
  const factory SignInPressed(SignInCredentials credentials) = _$SignInPressed;

  SignInCredentials get credentials;
  @JsonKey(ignore: true)
  $SignInPressedCopyWith<SignInPressed> get copyWith;
}

/// @nodoc
abstract class $CreateAccountPressedCopyWith<$Res> {
  factory $CreateAccountPressedCopyWith(CreateAccountPressed value,
          $Res Function(CreateAccountPressed) then) =
      _$CreateAccountPressedCopyWithImpl<$Res>;
  $Res call({RegisterCredentials credentials});

  $RegisterCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class _$CreateAccountPressedCopyWithImpl<$Res>
    extends _$AuthFormsEventCopyWithImpl<$Res>
    implements $CreateAccountPressedCopyWith<$Res> {
  _$CreateAccountPressedCopyWithImpl(
      CreateAccountPressed _value, $Res Function(CreateAccountPressed) _then)
      : super(_value, (v) => _then(v as CreateAccountPressed));

  @override
  CreateAccountPressed get _value => super._value as CreateAccountPressed;

  @override
  $Res call({
    Object credentials = freezed,
  }) {
    return _then(CreateAccountPressed(
      credentials == freezed
          ? _value.credentials
          : credentials as RegisterCredentials,
    ));
  }

  @override
  $RegisterCredentialsCopyWith<$Res> get credentials {
    if (_value.credentials == null) {
      return null;
    }
    return $RegisterCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value));
    });
  }
}

/// @nodoc
class _$CreateAccountPressed implements CreateAccountPressed {
  const _$CreateAccountPressed(this.credentials) : assert(credentials != null);

  @override
  final RegisterCredentials credentials;

  @override
  String toString() {
    return 'AuthFormsEvent.createAccountPressed(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAccountPressed &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credentials);

  @JsonKey(ignore: true)
  @override
  $CreateAccountPressedCopyWith<CreateAccountPressed> get copyWith =>
      _$CreateAccountPressedCopyWithImpl<CreateAccountPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signInOrRegisterToggled(),
    @required TResult signInPressed(SignInCredentials credentials),
    @required TResult createAccountPressed(RegisterCredentials credentials),
  }) {
    assert(signInOrRegisterToggled != null);
    assert(signInPressed != null);
    assert(createAccountPressed != null);
    return createAccountPressed(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signInOrRegisterToggled(),
    TResult signInPressed(SignInCredentials credentials),
    TResult createAccountPressed(RegisterCredentials credentials),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createAccountPressed != null) {
      return createAccountPressed(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    @required TResult signInPressed(SignInPressed value),
    @required TResult createAccountPressed(CreateAccountPressed value),
  }) {
    assert(signInOrRegisterToggled != null);
    assert(signInPressed != null);
    assert(createAccountPressed != null);
    return createAccountPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signInOrRegisterToggled(SignInOrRegisterToggled value),
    TResult signInPressed(SignInPressed value),
    TResult createAccountPressed(CreateAccountPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createAccountPressed != null) {
      return createAccountPressed(this);
    }
    return orElse();
  }
}

abstract class CreateAccountPressed implements AuthFormsEvent {
  const factory CreateAccountPressed(RegisterCredentials credentials) =
      _$CreateAccountPressed;

  RegisterCredentials get credentials;
  @JsonKey(ignore: true)
  $CreateAccountPressedCopyWith<CreateAccountPressed> get copyWith;
}

/// @nodoc
class _$AuthFormsStateTearOff {
  const _$AuthFormsStateTearOff();

// ignore: unused_element
  _AuthFormsState call(
      {@required String error,
      @required bool hasError,
      @required bool isSubmitting,
      @required bool isCreatingAccount,
      @required bool success}) {
    return _AuthFormsState(
      error: error,
      hasError: hasError,
      isSubmitting: isSubmitting,
      isCreatingAccount: isCreatingAccount,
      success: success,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFormsState = _$AuthFormsStateTearOff();

/// @nodoc
mixin _$AuthFormsState {
  String get error;
  bool get hasError;
  bool get isSubmitting;
  bool get isCreatingAccount;
  bool get success;

  @JsonKey(ignore: true)
  $AuthFormsStateCopyWith<AuthFormsState> get copyWith;
}

/// @nodoc
abstract class $AuthFormsStateCopyWith<$Res> {
  factory $AuthFormsStateCopyWith(
          AuthFormsState value, $Res Function(AuthFormsState) then) =
      _$AuthFormsStateCopyWithImpl<$Res>;
  $Res call(
      {String error,
      bool hasError,
      bool isSubmitting,
      bool isCreatingAccount,
      bool success});
}

/// @nodoc
class _$AuthFormsStateCopyWithImpl<$Res>
    implements $AuthFormsStateCopyWith<$Res> {
  _$AuthFormsStateCopyWithImpl(this._value, this._then);

  final AuthFormsState _value;
  // ignore: unused_field
  final $Res Function(AuthFormsState) _then;

  @override
  $Res call({
    Object error = freezed,
    Object hasError = freezed,
    Object isSubmitting = freezed,
    Object isCreatingAccount = freezed,
    Object success = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed ? _value.error : error as String,
      hasError: hasError == freezed ? _value.hasError : hasError as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isCreatingAccount: isCreatingAccount == freezed
          ? _value.isCreatingAccount
          : isCreatingAccount as bool,
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthFormsStateCopyWith<$Res>
    implements $AuthFormsStateCopyWith<$Res> {
  factory _$AuthFormsStateCopyWith(
          _AuthFormsState value, $Res Function(_AuthFormsState) then) =
      __$AuthFormsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String error,
      bool hasError,
      bool isSubmitting,
      bool isCreatingAccount,
      bool success});
}

/// @nodoc
class __$AuthFormsStateCopyWithImpl<$Res>
    extends _$AuthFormsStateCopyWithImpl<$Res>
    implements _$AuthFormsStateCopyWith<$Res> {
  __$AuthFormsStateCopyWithImpl(
      _AuthFormsState _value, $Res Function(_AuthFormsState) _then)
      : super(_value, (v) => _then(v as _AuthFormsState));

  @override
  _AuthFormsState get _value => super._value as _AuthFormsState;

  @override
  $Res call({
    Object error = freezed,
    Object hasError = freezed,
    Object isSubmitting = freezed,
    Object isCreatingAccount = freezed,
    Object success = freezed,
  }) {
    return _then(_AuthFormsState(
      error: error == freezed ? _value.error : error as String,
      hasError: hasError == freezed ? _value.hasError : hasError as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isCreatingAccount: isCreatingAccount == freezed
          ? _value.isCreatingAccount
          : isCreatingAccount as bool,
      success: success == freezed ? _value.success : success as bool,
    ));
  }
}

/// @nodoc
class _$_AuthFormsState implements _AuthFormsState {
  const _$_AuthFormsState(
      {@required this.error,
      @required this.hasError,
      @required this.isSubmitting,
      @required this.isCreatingAccount,
      @required this.success})
      : assert(error != null),
        assert(hasError != null),
        assert(isSubmitting != null),
        assert(isCreatingAccount != null),
        assert(success != null);

  @override
  final String error;
  @override
  final bool hasError;
  @override
  final bool isSubmitting;
  @override
  final bool isCreatingAccount;
  @override
  final bool success;

  @override
  String toString() {
    return 'AuthFormsState(error: $error, hasError: $hasError, isSubmitting: $isSubmitting, isCreatingAccount: $isCreatingAccount, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFormsState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.hasError, hasError) ||
                const DeepCollectionEquality()
                    .equals(other.hasError, hasError)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isCreatingAccount, isCreatingAccount) ||
                const DeepCollectionEquality()
                    .equals(other.isCreatingAccount, isCreatingAccount)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(hasError) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isCreatingAccount) ^
      const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$AuthFormsStateCopyWith<_AuthFormsState> get copyWith =>
      __$AuthFormsStateCopyWithImpl<_AuthFormsState>(this, _$identity);
}

abstract class _AuthFormsState implements AuthFormsState {
  const factory _AuthFormsState(
      {@required String error,
      @required bool hasError,
      @required bool isSubmitting,
      @required bool isCreatingAccount,
      @required bool success}) = _$_AuthFormsState;

  @override
  String get error;
  @override
  bool get hasError;
  @override
  bool get isSubmitting;
  @override
  bool get isCreatingAccount;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$AuthFormsStateCopyWith<_AuthFormsState> get copyWith;
}
