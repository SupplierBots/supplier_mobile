// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remote_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RemoteState _$RemoteStateFromJson(Map<String, dynamic> json) {
  return _RemoteState.fromJson(json);
}

/// @nodoc
class _$RemoteStateTearOff {
  const _$RemoteStateTearOff();

// ignore: unused_element
  _RemoteState call(
      {@required Delays delays, @required Map<String, Product> products}) {
    return _RemoteState(
      delays: delays,
      products: products,
    );
  }

// ignore: unused_element
  RemoteState fromJson(Map<String, Object> json) {
    return RemoteState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoteState = _$RemoteStateTearOff();

/// @nodoc
mixin _$RemoteState {
  Delays get delays;
  Map<String, Product> get products;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RemoteStateCopyWith<RemoteState> get copyWith;
}

/// @nodoc
abstract class $RemoteStateCopyWith<$Res> {
  factory $RemoteStateCopyWith(
          RemoteState value, $Res Function(RemoteState) then) =
      _$RemoteStateCopyWithImpl<$Res>;
  $Res call({Delays delays, Map<String, Product> products});

  $DelaysCopyWith<$Res> get delays;
}

/// @nodoc
class _$RemoteStateCopyWithImpl<$Res> implements $RemoteStateCopyWith<$Res> {
  _$RemoteStateCopyWithImpl(this._value, this._then);

  final RemoteState _value;
  // ignore: unused_field
  final $Res Function(RemoteState) _then;

  @override
  $Res call({
    Object delays = freezed,
    Object products = freezed,
  }) {
    return _then(_value.copyWith(
      delays: delays == freezed ? _value.delays : delays as Delays,
      products: products == freezed
          ? _value.products
          : products as Map<String, Product>,
    ));
  }

  @override
  $DelaysCopyWith<$Res> get delays {
    if (_value.delays == null) {
      return null;
    }
    return $DelaysCopyWith<$Res>(_value.delays, (value) {
      return _then(_value.copyWith(delays: value));
    });
  }
}

/// @nodoc
abstract class _$RemoteStateCopyWith<$Res>
    implements $RemoteStateCopyWith<$Res> {
  factory _$RemoteStateCopyWith(
          _RemoteState value, $Res Function(_RemoteState) then) =
      __$RemoteStateCopyWithImpl<$Res>;
  @override
  $Res call({Delays delays, Map<String, Product> products});

  @override
  $DelaysCopyWith<$Res> get delays;
}

/// @nodoc
class __$RemoteStateCopyWithImpl<$Res> extends _$RemoteStateCopyWithImpl<$Res>
    implements _$RemoteStateCopyWith<$Res> {
  __$RemoteStateCopyWithImpl(
      _RemoteState _value, $Res Function(_RemoteState) _then)
      : super(_value, (v) => _then(v as _RemoteState));

  @override
  _RemoteState get _value => super._value as _RemoteState;

  @override
  $Res call({
    Object delays = freezed,
    Object products = freezed,
  }) {
    return _then(_RemoteState(
      delays: delays == freezed ? _value.delays : delays as Delays,
      products: products == freezed
          ? _value.products
          : products as Map<String, Product>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoteState implements _RemoteState {
  const _$_RemoteState({@required this.delays, @required this.products})
      : assert(delays != null),
        assert(products != null);

  factory _$_RemoteState.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoteStateFromJson(json);

  @override
  final Delays delays;
  @override
  final Map<String, Product> products;

  @override
  String toString() {
    return 'RemoteState(delays: $delays, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteState &&
            (identical(other.delays, delays) ||
                const DeepCollectionEquality().equals(other.delays, delays)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(delays) ^
      const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$RemoteStateCopyWith<_RemoteState> get copyWith =>
      __$RemoteStateCopyWithImpl<_RemoteState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoteStateToJson(this);
  }
}

abstract class _RemoteState implements RemoteState {
  const factory _RemoteState(
      {@required Delays delays,
      @required Map<String, Product> products}) = _$_RemoteState;

  factory _RemoteState.fromJson(Map<String, dynamic> json) =
      _$_RemoteState.fromJson;

  @override
  Delays get delays;
  @override
  Map<String, Product> get products;
  @override
  @JsonKey(ignore: true)
  _$RemoteStateCopyWith<_RemoteState> get copyWith;
}
