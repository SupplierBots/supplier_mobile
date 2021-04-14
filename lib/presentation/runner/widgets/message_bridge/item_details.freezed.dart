// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) {
  return _ItemDetails.fromJson(json);
}

/// @nodoc
class _$ItemDetailsTearOff {
  const _$ItemDetailsTearOff();

// ignore: unused_element
  _ItemDetails call(
      {@required String name,
      @required String style,
      @required String size,
      @required String image}) {
    return _ItemDetails(
      name: name,
      style: style,
      size: size,
      image: image,
    );
  }

// ignore: unused_element
  ItemDetails fromJson(Map<String, Object> json) {
    return ItemDetails.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemDetails = _$ItemDetailsTearOff();

/// @nodoc
mixin _$ItemDetails {
  String get name;
  String get style;
  String get size;
  String get image;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemDetailsCopyWith<ItemDetails> get copyWith;
}

/// @nodoc
abstract class $ItemDetailsCopyWith<$Res> {
  factory $ItemDetailsCopyWith(
          ItemDetails value, $Res Function(ItemDetails) then) =
      _$ItemDetailsCopyWithImpl<$Res>;
  $Res call({String name, String style, String size, String image});
}

/// @nodoc
class _$ItemDetailsCopyWithImpl<$Res> implements $ItemDetailsCopyWith<$Res> {
  _$ItemDetailsCopyWithImpl(this._value, this._then);

  final ItemDetails _value;
  // ignore: unused_field
  final $Res Function(ItemDetails) _then;

  @override
  $Res call({
    Object name = freezed,
    Object style = freezed,
    Object size = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      style: style == freezed ? _value.style : style as String,
      size: size == freezed ? _value.size : size as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemDetailsCopyWith<$Res>
    implements $ItemDetailsCopyWith<$Res> {
  factory _$ItemDetailsCopyWith(
          _ItemDetails value, $Res Function(_ItemDetails) then) =
      __$ItemDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String name, String style, String size, String image});
}

/// @nodoc
class __$ItemDetailsCopyWithImpl<$Res> extends _$ItemDetailsCopyWithImpl<$Res>
    implements _$ItemDetailsCopyWith<$Res> {
  __$ItemDetailsCopyWithImpl(
      _ItemDetails _value, $Res Function(_ItemDetails) _then)
      : super(_value, (v) => _then(v as _ItemDetails));

  @override
  _ItemDetails get _value => super._value as _ItemDetails;

  @override
  $Res call({
    Object name = freezed,
    Object style = freezed,
    Object size = freezed,
    Object image = freezed,
  }) {
    return _then(_ItemDetails(
      name: name == freezed ? _value.name : name as String,
      style: style == freezed ? _value.style : style as String,
      size: size == freezed ? _value.size : size as String,
      image: image == freezed ? _value.image : image as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemDetails implements _ItemDetails {
  const _$_ItemDetails(
      {@required this.name,
      @required this.style,
      @required this.size,
      @required this.image})
      : assert(name != null),
        assert(style != null),
        assert(size != null),
        assert(image != null);

  factory _$_ItemDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemDetailsFromJson(json);

  @override
  final String name;
  @override
  final String style;
  @override
  final String size;
  @override
  final String image;

  @override
  String toString() {
    return 'ItemDetails(name: $name, style: $style, size: $size, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemDetails &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.style, style) ||
                const DeepCollectionEquality().equals(other.style, style)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(style) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ItemDetailsCopyWith<_ItemDetails> get copyWith =>
      __$ItemDetailsCopyWithImpl<_ItemDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemDetailsToJson(this);
  }
}

abstract class _ItemDetails implements ItemDetails {
  const factory _ItemDetails(
      {@required String name,
      @required String style,
      @required String size,
      @required String image}) = _$_ItemDetails;

  factory _ItemDetails.fromJson(Map<String, dynamic> json) =
      _$_ItemDetails.fromJson;

  @override
  String get name;
  @override
  String get style;
  @override
  String get size;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$ItemDetailsCopyWith<_ItemDetails> get copyWith;
}
