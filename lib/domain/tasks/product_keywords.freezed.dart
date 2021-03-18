// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_keywords.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductKeywords _$ProductKeywordsFromJson(Map<String, dynamic> json) {
  return _ProductKeywords.fromJson(json);
}

/// @nodoc
class _$ProductKeywordsTearOff {
  const _$ProductKeywordsTearOff();

// ignore: unused_element
  _ProductKeywords call(
      {@required String name,
      @required List<String> positive,
      @required List<String> negative,
      @required List<String> multi}) {
    return _ProductKeywords(
      name: name,
      positive: positive,
      negative: negative,
      multi: multi,
    );
  }

// ignore: unused_element
  ProductKeywords fromJson(Map<String, Object> json) {
    return ProductKeywords.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductKeywords = _$ProductKeywordsTearOff();

/// @nodoc
mixin _$ProductKeywords {
  String get name;
  List<String> get positive;
  List<String> get negative;
  List<String> get multi;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProductKeywordsCopyWith<ProductKeywords> get copyWith;
}

/// @nodoc
abstract class $ProductKeywordsCopyWith<$Res> {
  factory $ProductKeywordsCopyWith(
          ProductKeywords value, $Res Function(ProductKeywords) then) =
      _$ProductKeywordsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<String> positive,
      List<String> negative,
      List<String> multi});
}

/// @nodoc
class _$ProductKeywordsCopyWithImpl<$Res>
    implements $ProductKeywordsCopyWith<$Res> {
  _$ProductKeywordsCopyWithImpl(this._value, this._then);

  final ProductKeywords _value;
  // ignore: unused_field
  final $Res Function(ProductKeywords) _then;

  @override
  $Res call({
    Object name = freezed,
    Object positive = freezed,
    Object negative = freezed,
    Object multi = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      positive:
          positive == freezed ? _value.positive : positive as List<String>,
      negative:
          negative == freezed ? _value.negative : negative as List<String>,
      multi: multi == freezed ? _value.multi : multi as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ProductKeywordsCopyWith<$Res>
    implements $ProductKeywordsCopyWith<$Res> {
  factory _$ProductKeywordsCopyWith(
          _ProductKeywords value, $Res Function(_ProductKeywords) then) =
      __$ProductKeywordsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<String> positive,
      List<String> negative,
      List<String> multi});
}

/// @nodoc
class __$ProductKeywordsCopyWithImpl<$Res>
    extends _$ProductKeywordsCopyWithImpl<$Res>
    implements _$ProductKeywordsCopyWith<$Res> {
  __$ProductKeywordsCopyWithImpl(
      _ProductKeywords _value, $Res Function(_ProductKeywords) _then)
      : super(_value, (v) => _then(v as _ProductKeywords));

  @override
  _ProductKeywords get _value => super._value as _ProductKeywords;

  @override
  $Res call({
    Object name = freezed,
    Object positive = freezed,
    Object negative = freezed,
    Object multi = freezed,
  }) {
    return _then(_ProductKeywords(
      name: name == freezed ? _value.name : name as String,
      positive:
          positive == freezed ? _value.positive : positive as List<String>,
      negative:
          negative == freezed ? _value.negative : negative as List<String>,
      multi: multi == freezed ? _value.multi : multi as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductKeywords implements _ProductKeywords {
  const _$_ProductKeywords(
      {@required this.name,
      @required this.positive,
      @required this.negative,
      @required this.multi})
      : assert(name != null),
        assert(positive != null),
        assert(negative != null),
        assert(multi != null);

  factory _$_ProductKeywords.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductKeywordsFromJson(json);

  @override
  final String name;
  @override
  final List<String> positive;
  @override
  final List<String> negative;
  @override
  final List<String> multi;

  @override
  String toString() {
    return 'ProductKeywords(name: $name, positive: $positive, negative: $negative, multi: $multi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductKeywords &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.positive, positive) ||
                const DeepCollectionEquality()
                    .equals(other.positive, positive)) &&
            (identical(other.negative, negative) ||
                const DeepCollectionEquality()
                    .equals(other.negative, negative)) &&
            (identical(other.multi, multi) ||
                const DeepCollectionEquality().equals(other.multi, multi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(positive) ^
      const DeepCollectionEquality().hash(negative) ^
      const DeepCollectionEquality().hash(multi);

  @JsonKey(ignore: true)
  @override
  _$ProductKeywordsCopyWith<_ProductKeywords> get copyWith =>
      __$ProductKeywordsCopyWithImpl<_ProductKeywords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductKeywordsToJson(this);
  }
}

abstract class _ProductKeywords implements ProductKeywords {
  const factory _ProductKeywords(
      {@required String name,
      @required List<String> positive,
      @required List<String> negative,
      @required List<String> multi}) = _$_ProductKeywords;

  factory _ProductKeywords.fromJson(Map<String, dynamic> json) =
      _$_ProductKeywords.fromJson;

  @override
  String get name;
  @override
  List<String> get positive;
  @override
  List<String> get negative;
  @override
  List<String> get multi;
  @override
  @JsonKey(ignore: true)
  _$ProductKeywordsCopyWith<_ProductKeywords> get copyWith;
}
