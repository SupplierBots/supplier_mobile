// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timestamps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Timestamps _$TimestampsFromJson(Map<String, dynamic> json) {
  return _Timestamps.fromJson(json);
}

/// @nodoc
class _$TimestampsTearOff {
  const _$TimestampsTearOff();

// ignore: unused_element
  _Timestamps call(
      {@required int start, @required int atc, @required int submit}) {
    return _Timestamps(
      start: start,
      atc: atc,
      submit: submit,
    );
  }

// ignore: unused_element
  Timestamps fromJson(Map<String, Object> json) {
    return Timestamps.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Timestamps = _$TimestampsTearOff();

/// @nodoc
mixin _$Timestamps {
  int get start;
  int get atc;
  int get submit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TimestampsCopyWith<Timestamps> get copyWith;
}

/// @nodoc
abstract class $TimestampsCopyWith<$Res> {
  factory $TimestampsCopyWith(
          Timestamps value, $Res Function(Timestamps) then) =
      _$TimestampsCopyWithImpl<$Res>;
  $Res call({int start, int atc, int submit});
}

/// @nodoc
class _$TimestampsCopyWithImpl<$Res> implements $TimestampsCopyWith<$Res> {
  _$TimestampsCopyWithImpl(this._value, this._then);

  final Timestamps _value;
  // ignore: unused_field
  final $Res Function(Timestamps) _then;

  @override
  $Res call({
    Object start = freezed,
    Object atc = freezed,
    Object submit = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed ? _value.start : start as int,
      atc: atc == freezed ? _value.atc : atc as int,
      submit: submit == freezed ? _value.submit : submit as int,
    ));
  }
}

/// @nodoc
abstract class _$TimestampsCopyWith<$Res> implements $TimestampsCopyWith<$Res> {
  factory _$TimestampsCopyWith(
          _Timestamps value, $Res Function(_Timestamps) then) =
      __$TimestampsCopyWithImpl<$Res>;
  @override
  $Res call({int start, int atc, int submit});
}

/// @nodoc
class __$TimestampsCopyWithImpl<$Res> extends _$TimestampsCopyWithImpl<$Res>
    implements _$TimestampsCopyWith<$Res> {
  __$TimestampsCopyWithImpl(
      _Timestamps _value, $Res Function(_Timestamps) _then)
      : super(_value, (v) => _then(v as _Timestamps));

  @override
  _Timestamps get _value => super._value as _Timestamps;

  @override
  $Res call({
    Object start = freezed,
    Object atc = freezed,
    Object submit = freezed,
  }) {
    return _then(_Timestamps(
      start: start == freezed ? _value.start : start as int,
      atc: atc == freezed ? _value.atc : atc as int,
      submit: submit == freezed ? _value.submit : submit as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Timestamps implements _Timestamps {
  const _$_Timestamps(
      {@required this.start, @required this.atc, @required this.submit})
      : assert(start != null),
        assert(atc != null),
        assert(submit != null);

  factory _$_Timestamps.fromJson(Map<String, dynamic> json) =>
      _$_$_TimestampsFromJson(json);

  @override
  final int start;
  @override
  final int atc;
  @override
  final int submit;

  @override
  String toString() {
    return 'Timestamps(start: $start, atc: $atc, submit: $submit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Timestamps &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.atc, atc) ||
                const DeepCollectionEquality().equals(other.atc, atc)) &&
            (identical(other.submit, submit) ||
                const DeepCollectionEquality().equals(other.submit, submit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(atc) ^
      const DeepCollectionEquality().hash(submit);

  @JsonKey(ignore: true)
  @override
  _$TimestampsCopyWith<_Timestamps> get copyWith =>
      __$TimestampsCopyWithImpl<_Timestamps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimestampsToJson(this);
  }
}

abstract class _Timestamps implements Timestamps {
  const factory _Timestamps(
      {@required int start,
      @required int atc,
      @required int submit}) = _$_Timestamps;

  factory _Timestamps.fromJson(Map<String, dynamic> json) =
      _$_Timestamps.fromJson;

  @override
  int get start;
  @override
  int get atc;
  @override
  int get submit;
  @override
  @JsonKey(ignore: true)
  _$TimestampsCopyWith<_Timestamps> get copyWith;
}
