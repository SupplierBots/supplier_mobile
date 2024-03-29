// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cookies_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CookiesState _$CookiesStateFromJson(Map<String, dynamic> json) {
  return _CookiesState.fromJson(json);
}

/// @nodoc
class _$CookiesStateTearOff {
  const _$CookiesStateTearOff();

// ignore: unused_element
  _CookiesState call(
      {@required List<SerializableCookie> googleCookies,
      String googleAccountEmail}) {
    return _CookiesState(
      googleCookies: googleCookies,
      googleAccountEmail: googleAccountEmail,
    );
  }

// ignore: unused_element
  CookiesState fromJson(Map<String, Object> json) {
    return CookiesState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CookiesState = _$CookiesStateTearOff();

/// @nodoc
mixin _$CookiesState {
  List<SerializableCookie> get googleCookies;
  String get googleAccountEmail;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CookiesStateCopyWith<CookiesState> get copyWith;
}

/// @nodoc
abstract class $CookiesStateCopyWith<$Res> {
  factory $CookiesStateCopyWith(
          CookiesState value, $Res Function(CookiesState) then) =
      _$CookiesStateCopyWithImpl<$Res>;
  $Res call(
      {List<SerializableCookie> googleCookies, String googleAccountEmail});
}

/// @nodoc
class _$CookiesStateCopyWithImpl<$Res> implements $CookiesStateCopyWith<$Res> {
  _$CookiesStateCopyWithImpl(this._value, this._then);

  final CookiesState _value;
  // ignore: unused_field
  final $Res Function(CookiesState) _then;

  @override
  $Res call({
    Object googleCookies = freezed,
    Object googleAccountEmail = freezed,
  }) {
    return _then(_value.copyWith(
      googleCookies: googleCookies == freezed
          ? _value.googleCookies
          : googleCookies as List<SerializableCookie>,
      googleAccountEmail: googleAccountEmail == freezed
          ? _value.googleAccountEmail
          : googleAccountEmail as String,
    ));
  }
}

/// @nodoc
abstract class _$CookiesStateCopyWith<$Res>
    implements $CookiesStateCopyWith<$Res> {
  factory _$CookiesStateCopyWith(
          _CookiesState value, $Res Function(_CookiesState) then) =
      __$CookiesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SerializableCookie> googleCookies, String googleAccountEmail});
}

/// @nodoc
class __$CookiesStateCopyWithImpl<$Res> extends _$CookiesStateCopyWithImpl<$Res>
    implements _$CookiesStateCopyWith<$Res> {
  __$CookiesStateCopyWithImpl(
      _CookiesState _value, $Res Function(_CookiesState) _then)
      : super(_value, (v) => _then(v as _CookiesState));

  @override
  _CookiesState get _value => super._value as _CookiesState;

  @override
  $Res call({
    Object googleCookies = freezed,
    Object googleAccountEmail = freezed,
  }) {
    return _then(_CookiesState(
      googleCookies: googleCookies == freezed
          ? _value.googleCookies
          : googleCookies as List<SerializableCookie>,
      googleAccountEmail: googleAccountEmail == freezed
          ? _value.googleAccountEmail
          : googleAccountEmail as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CookiesState extends _CookiesState {
  const _$_CookiesState({@required this.googleCookies, this.googleAccountEmail})
      : assert(googleCookies != null),
        super._();

  factory _$_CookiesState.fromJson(Map<String, dynamic> json) =>
      _$_$_CookiesStateFromJson(json);

  @override
  final List<SerializableCookie> googleCookies;
  @override
  final String googleAccountEmail;

  @override
  String toString() {
    return 'CookiesState(googleCookies: $googleCookies, googleAccountEmail: $googleAccountEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CookiesState &&
            (identical(other.googleCookies, googleCookies) ||
                const DeepCollectionEquality()
                    .equals(other.googleCookies, googleCookies)) &&
            (identical(other.googleAccountEmail, googleAccountEmail) ||
                const DeepCollectionEquality()
                    .equals(other.googleAccountEmail, googleAccountEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(googleCookies) ^
      const DeepCollectionEquality().hash(googleAccountEmail);

  @JsonKey(ignore: true)
  @override
  _$CookiesStateCopyWith<_CookiesState> get copyWith =>
      __$CookiesStateCopyWithImpl<_CookiesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CookiesStateToJson(this);
  }
}

abstract class _CookiesState extends CookiesState {
  const _CookiesState._() : super._();
  const factory _CookiesState(
      {@required List<SerializableCookie> googleCookies,
      String googleAccountEmail}) = _$_CookiesState;

  factory _CookiesState.fromJson(Map<String, dynamic> json) =
      _$_CookiesState.fromJson;

  @override
  List<SerializableCookie> get googleCookies;
  @override
  String get googleAccountEmail;
  @override
  @JsonKey(ignore: true)
  _$CookiesStateCopyWith<_CookiesState> get copyWith;
}
