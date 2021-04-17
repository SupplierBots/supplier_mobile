// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'personalization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Personalization _$PersonalizationFromJson(Map<String, dynamic> json) {
  return _Personalization.fromJson(json);
}

/// @nodoc
class _$PersonalizationTearOff {
  const _$PersonalizationTearOff();

// ignore: unused_element
  _Personalization call({bool enableVibrations, bool enableWarnings}) {
    return _Personalization(
      enableVibrations: enableVibrations,
      enableWarnings: enableWarnings,
    );
  }

// ignore: unused_element
  Personalization fromJson(Map<String, Object> json) {
    return Personalization.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Personalization = _$PersonalizationTearOff();

/// @nodoc
mixin _$Personalization {
  bool get enableVibrations;
  bool get enableWarnings;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PersonalizationCopyWith<Personalization> get copyWith;
}

/// @nodoc
abstract class $PersonalizationCopyWith<$Res> {
  factory $PersonalizationCopyWith(
          Personalization value, $Res Function(Personalization) then) =
      _$PersonalizationCopyWithImpl<$Res>;
  $Res call({bool enableVibrations, bool enableWarnings});
}

/// @nodoc
class _$PersonalizationCopyWithImpl<$Res>
    implements $PersonalizationCopyWith<$Res> {
  _$PersonalizationCopyWithImpl(this._value, this._then);

  final Personalization _value;
  // ignore: unused_field
  final $Res Function(Personalization) _then;

  @override
  $Res call({
    Object enableVibrations = freezed,
    Object enableWarnings = freezed,
  }) {
    return _then(_value.copyWith(
      enableVibrations: enableVibrations == freezed
          ? _value.enableVibrations
          : enableVibrations as bool,
      enableWarnings: enableWarnings == freezed
          ? _value.enableWarnings
          : enableWarnings as bool,
    ));
  }
}

/// @nodoc
abstract class _$PersonalizationCopyWith<$Res>
    implements $PersonalizationCopyWith<$Res> {
  factory _$PersonalizationCopyWith(
          _Personalization value, $Res Function(_Personalization) then) =
      __$PersonalizationCopyWithImpl<$Res>;
  @override
  $Res call({bool enableVibrations, bool enableWarnings});
}

/// @nodoc
class __$PersonalizationCopyWithImpl<$Res>
    extends _$PersonalizationCopyWithImpl<$Res>
    implements _$PersonalizationCopyWith<$Res> {
  __$PersonalizationCopyWithImpl(
      _Personalization _value, $Res Function(_Personalization) _then)
      : super(_value, (v) => _then(v as _Personalization));

  @override
  _Personalization get _value => super._value as _Personalization;

  @override
  $Res call({
    Object enableVibrations = freezed,
    Object enableWarnings = freezed,
  }) {
    return _then(_Personalization(
      enableVibrations: enableVibrations == freezed
          ? _value.enableVibrations
          : enableVibrations as bool,
      enableWarnings: enableWarnings == freezed
          ? _value.enableWarnings
          : enableWarnings as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Personalization implements _Personalization {
  const _$_Personalization({this.enableVibrations, this.enableWarnings});

  factory _$_Personalization.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalizationFromJson(json);

  @override
  final bool enableVibrations;
  @override
  final bool enableWarnings;

  @override
  String toString() {
    return 'Personalization(enableVibrations: $enableVibrations, enableWarnings: $enableWarnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Personalization &&
            (identical(other.enableVibrations, enableVibrations) ||
                const DeepCollectionEquality()
                    .equals(other.enableVibrations, enableVibrations)) &&
            (identical(other.enableWarnings, enableWarnings) ||
                const DeepCollectionEquality()
                    .equals(other.enableWarnings, enableWarnings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enableVibrations) ^
      const DeepCollectionEquality().hash(enableWarnings);

  @JsonKey(ignore: true)
  @override
  _$PersonalizationCopyWith<_Personalization> get copyWith =>
      __$PersonalizationCopyWithImpl<_Personalization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalizationToJson(this);
  }
}

abstract class _Personalization implements Personalization {
  const factory _Personalization({bool enableVibrations, bool enableWarnings}) =
      _$_Personalization;

  factory _Personalization.fromJson(Map<String, dynamic> json) =
      _$_Personalization.fromJson;

  @override
  bool get enableVibrations;
  @override
  bool get enableWarnings;
  @override
  @JsonKey(ignore: true)
  _$PersonalizationCopyWith<_Personalization> get copyWith;
}
