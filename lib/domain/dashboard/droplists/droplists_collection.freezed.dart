// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'droplists_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DroplistCollection _$DroplistCollectionFromJson(Map<String, dynamic> json) {
  return _DroplistCollection.fromJson(json);
}

/// @nodoc
class _$DroplistCollectionTearOff {
  const _$DroplistCollectionTearOff();

// ignore: unused_element
  _DroplistCollection call(
      {@required Droplist supreme, @required Droplist palace}) {
    return _DroplistCollection(
      supreme: supreme,
      palace: palace,
    );
  }

// ignore: unused_element
  DroplistCollection fromJson(Map<String, Object> json) {
    return DroplistCollection.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DroplistCollection = _$DroplistCollectionTearOff();

/// @nodoc
mixin _$DroplistCollection {
  Droplist get supreme;
  Droplist get palace;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DroplistCollectionCopyWith<DroplistCollection> get copyWith;
}

/// @nodoc
abstract class $DroplistCollectionCopyWith<$Res> {
  factory $DroplistCollectionCopyWith(
          DroplistCollection value, $Res Function(DroplistCollection) then) =
      _$DroplistCollectionCopyWithImpl<$Res>;
  $Res call({Droplist supreme, Droplist palace});

  $DroplistCopyWith<$Res> get supreme;
  $DroplistCopyWith<$Res> get palace;
}

/// @nodoc
class _$DroplistCollectionCopyWithImpl<$Res>
    implements $DroplistCollectionCopyWith<$Res> {
  _$DroplistCollectionCopyWithImpl(this._value, this._then);

  final DroplistCollection _value;
  // ignore: unused_field
  final $Res Function(DroplistCollection) _then;

  @override
  $Res call({
    Object supreme = freezed,
    Object palace = freezed,
  }) {
    return _then(_value.copyWith(
      supreme: supreme == freezed ? _value.supreme : supreme as Droplist,
      palace: palace == freezed ? _value.palace : palace as Droplist,
    ));
  }

  @override
  $DroplistCopyWith<$Res> get supreme {
    if (_value.supreme == null) {
      return null;
    }
    return $DroplistCopyWith<$Res>(_value.supreme, (value) {
      return _then(_value.copyWith(supreme: value));
    });
  }

  @override
  $DroplistCopyWith<$Res> get palace {
    if (_value.palace == null) {
      return null;
    }
    return $DroplistCopyWith<$Res>(_value.palace, (value) {
      return _then(_value.copyWith(palace: value));
    });
  }
}

/// @nodoc
abstract class _$DroplistCollectionCopyWith<$Res>
    implements $DroplistCollectionCopyWith<$Res> {
  factory _$DroplistCollectionCopyWith(
          _DroplistCollection value, $Res Function(_DroplistCollection) then) =
      __$DroplistCollectionCopyWithImpl<$Res>;
  @override
  $Res call({Droplist supreme, Droplist palace});

  @override
  $DroplistCopyWith<$Res> get supreme;
  @override
  $DroplistCopyWith<$Res> get palace;
}

/// @nodoc
class __$DroplistCollectionCopyWithImpl<$Res>
    extends _$DroplistCollectionCopyWithImpl<$Res>
    implements _$DroplistCollectionCopyWith<$Res> {
  __$DroplistCollectionCopyWithImpl(
      _DroplistCollection _value, $Res Function(_DroplistCollection) _then)
      : super(_value, (v) => _then(v as _DroplistCollection));

  @override
  _DroplistCollection get _value => super._value as _DroplistCollection;

  @override
  $Res call({
    Object supreme = freezed,
    Object palace = freezed,
  }) {
    return _then(_DroplistCollection(
      supreme: supreme == freezed ? _value.supreme : supreme as Droplist,
      palace: palace == freezed ? _value.palace : palace as Droplist,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DroplistCollection implements _DroplistCollection {
  const _$_DroplistCollection({@required this.supreme, @required this.palace})
      : assert(supreme != null),
        assert(palace != null);

  factory _$_DroplistCollection.fromJson(Map<String, dynamic> json) =>
      _$_$_DroplistCollectionFromJson(json);

  @override
  final Droplist supreme;
  @override
  final Droplist palace;

  @override
  String toString() {
    return 'DroplistCollection(supreme: $supreme, palace: $palace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DroplistCollection &&
            (identical(other.supreme, supreme) ||
                const DeepCollectionEquality()
                    .equals(other.supreme, supreme)) &&
            (identical(other.palace, palace) ||
                const DeepCollectionEquality().equals(other.palace, palace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(supreme) ^
      const DeepCollectionEquality().hash(palace);

  @JsonKey(ignore: true)
  @override
  _$DroplistCollectionCopyWith<_DroplistCollection> get copyWith =>
      __$DroplistCollectionCopyWithImpl<_DroplistCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DroplistCollectionToJson(this);
  }
}

abstract class _DroplistCollection implements DroplistCollection {
  const factory _DroplistCollection(
      {@required Droplist supreme,
      @required Droplist palace}) = _$_DroplistCollection;

  factory _DroplistCollection.fromJson(Map<String, dynamic> json) =
      _$_DroplistCollection.fromJson;

  @override
  Droplist get supreme;
  @override
  Droplist get palace;
  @override
  @JsonKey(ignore: true)
  _$DroplistCollectionCopyWith<_DroplistCollection> get copyWith;
}
