// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_forms_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFormsStateTearOff {
  const _$AuthFormsStateTearOff();

// ignore: unused_element
  _AuthFormsState call(
      {@required bool isSubmitting,
      @required bool isCreatingAccount,
      @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) {
    return _AuthFormsState(
      isSubmitting: isSubmitting,
      isCreatingAccount: isCreatingAccount,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFormsState = _$AuthFormsStateTearOff();

/// @nodoc
mixin _$AuthFormsState {
  bool get isSubmitting;
  bool get isCreatingAccount;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;

  @JsonKey(ignore: true)
  $AuthFormsStateCopyWith<AuthFormsState> get copyWith;
}

/// @nodoc
abstract class $AuthFormsStateCopyWith<$Res> {
  factory $AuthFormsStateCopyWith(
          AuthFormsState value, $Res Function(AuthFormsState) then) =
      _$AuthFormsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool isCreatingAccount,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
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
    Object isSubmitting = freezed,
    Object isCreatingAccount = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isCreatingAccount: isCreatingAccount == freezed
          ? _value.isCreatingAccount
          : isCreatingAccount as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
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
      {bool isSubmitting,
      bool isCreatingAccount,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});
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
    Object isSubmitting = freezed,
    Object isCreatingAccount = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_AuthFormsState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isCreatingAccount: isCreatingAccount == freezed
          ? _value.isCreatingAccount
          : isCreatingAccount as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AuthFormsState extends _AuthFormsState {
  const _$_AuthFormsState(
      {@required this.isSubmitting,
      @required this.isCreatingAccount,
      @required this.failureOrSuccessOption})
      : assert(isSubmitting != null),
        assert(isCreatingAccount != null),
        assert(failureOrSuccessOption != null),
        super._();

  @override
  final bool isSubmitting;
  @override
  final bool isCreatingAccount;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AuthFormsState(isSubmitting: $isSubmitting, isCreatingAccount: $isCreatingAccount, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFormsState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isCreatingAccount, isCreatingAccount) ||
                const DeepCollectionEquality()
                    .equals(other.isCreatingAccount, isCreatingAccount)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isCreatingAccount) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AuthFormsStateCopyWith<_AuthFormsState> get copyWith =>
      __$AuthFormsStateCopyWithImpl<_AuthFormsState>(this, _$identity);
}

abstract class _AuthFormsState extends AuthFormsState {
  const _AuthFormsState._() : super._();
  const factory _AuthFormsState(
          {@required bool isSubmitting,
          @required bool isCreatingAccount,
          @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption}) =
      _$_AuthFormsState;

  @override
  bool get isSubmitting;
  @override
  bool get isCreatingAccount;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$AuthFormsStateCopyWith<_AuthFormsState> get copyWith;
}
