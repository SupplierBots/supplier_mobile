// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'delays.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Delays _$DelaysFromJson(Map<String, dynamic> json) {
  return _Delays.fromJson(json);
}

/// @nodoc
class _$DelaysTearOff {
  const _$DelaysTearOff();

// ignore: unused_element
  _Delays call(
      {@required int minCheckout,
      @required int maxCheckout,
      @required int restocksCheckout,
      @required int refresh}) {
    return _Delays(
      minCheckout: minCheckout,
      maxCheckout: maxCheckout,
      restocksCheckout: restocksCheckout,
      refresh: refresh,
    );
  }

// ignore: unused_element
  Delays fromJson(Map<String, Object> json) {
    return Delays.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Delays = _$DelaysTearOff();

/// @nodoc
mixin _$Delays {
  int get minCheckout;
  int get maxCheckout;
  int get restocksCheckout;
  int get refresh;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DelaysCopyWith<Delays> get copyWith;
}

/// @nodoc
abstract class $DelaysCopyWith<$Res> {
  factory $DelaysCopyWith(Delays value, $Res Function(Delays) then) =
      _$DelaysCopyWithImpl<$Res>;
  $Res call(
      {int minCheckout, int maxCheckout, int restocksCheckout, int refresh});
}

/// @nodoc
class _$DelaysCopyWithImpl<$Res> implements $DelaysCopyWith<$Res> {
  _$DelaysCopyWithImpl(this._value, this._then);

  final Delays _value;
  // ignore: unused_field
  final $Res Function(Delays) _then;

  @override
  $Res call({
    Object minCheckout = freezed,
    Object maxCheckout = freezed,
    Object restocksCheckout = freezed,
    Object refresh = freezed,
  }) {
    return _then(_value.copyWith(
      minCheckout:
          minCheckout == freezed ? _value.minCheckout : minCheckout as int,
      maxCheckout:
          maxCheckout == freezed ? _value.maxCheckout : maxCheckout as int,
      restocksCheckout: restocksCheckout == freezed
          ? _value.restocksCheckout
          : restocksCheckout as int,
      refresh: refresh == freezed ? _value.refresh : refresh as int,
    ));
  }
}

/// @nodoc
abstract class _$DelaysCopyWith<$Res> implements $DelaysCopyWith<$Res> {
  factory _$DelaysCopyWith(_Delays value, $Res Function(_Delays) then) =
      __$DelaysCopyWithImpl<$Res>;
  @override
  $Res call(
      {int minCheckout, int maxCheckout, int restocksCheckout, int refresh});
}

/// @nodoc
class __$DelaysCopyWithImpl<$Res> extends _$DelaysCopyWithImpl<$Res>
    implements _$DelaysCopyWith<$Res> {
  __$DelaysCopyWithImpl(_Delays _value, $Res Function(_Delays) _then)
      : super(_value, (v) => _then(v as _Delays));

  @override
  _Delays get _value => super._value as _Delays;

  @override
  $Res call({
    Object minCheckout = freezed,
    Object maxCheckout = freezed,
    Object restocksCheckout = freezed,
    Object refresh = freezed,
  }) {
    return _then(_Delays(
      minCheckout:
          minCheckout == freezed ? _value.minCheckout : minCheckout as int,
      maxCheckout:
          maxCheckout == freezed ? _value.maxCheckout : maxCheckout as int,
      restocksCheckout: restocksCheckout == freezed
          ? _value.restocksCheckout
          : restocksCheckout as int,
      refresh: refresh == freezed ? _value.refresh : refresh as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Delays implements _Delays {
  const _$_Delays(
      {@required this.minCheckout,
      @required this.maxCheckout,
      @required this.restocksCheckout,
      @required this.refresh})
      : assert(minCheckout != null),
        assert(maxCheckout != null),
        assert(restocksCheckout != null),
        assert(refresh != null);

  factory _$_Delays.fromJson(Map<String, dynamic> json) =>
      _$_$_DelaysFromJson(json);

  @override
  final int minCheckout;
  @override
  final int maxCheckout;
  @override
  final int restocksCheckout;
  @override
  final int refresh;

  @override
  String toString() {
    return 'Delays(minCheckout: $minCheckout, maxCheckout: $maxCheckout, restocksCheckout: $restocksCheckout, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Delays &&
            (identical(other.minCheckout, minCheckout) ||
                const DeepCollectionEquality()
                    .equals(other.minCheckout, minCheckout)) &&
            (identical(other.maxCheckout, maxCheckout) ||
                const DeepCollectionEquality()
                    .equals(other.maxCheckout, maxCheckout)) &&
            (identical(other.restocksCheckout, restocksCheckout) ||
                const DeepCollectionEquality()
                    .equals(other.restocksCheckout, restocksCheckout)) &&
            (identical(other.refresh, refresh) ||
                const DeepCollectionEquality().equals(other.refresh, refresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(minCheckout) ^
      const DeepCollectionEquality().hash(maxCheckout) ^
      const DeepCollectionEquality().hash(restocksCheckout) ^
      const DeepCollectionEquality().hash(refresh);

  @JsonKey(ignore: true)
  @override
  _$DelaysCopyWith<_Delays> get copyWith =>
      __$DelaysCopyWithImpl<_Delays>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DelaysToJson(this);
  }
}

abstract class _Delays implements Delays {
  const factory _Delays(
      {@required int minCheckout,
      @required int maxCheckout,
      @required int restocksCheckout,
      @required int refresh}) = _$_Delays;

  factory _Delays.fromJson(Map<String, dynamic> json) = _$_Delays.fromJson;

  @override
  int get minCheckout;
  @override
  int get maxCheckout;
  @override
  int get restocksCheckout;
  @override
  int get refresh;
  @override
  @JsonKey(ignore: true)
  _$DelaysCopyWith<_Delays> get copyWith;
}
