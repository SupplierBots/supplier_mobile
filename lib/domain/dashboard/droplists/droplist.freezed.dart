// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'droplist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Droplist _$DroplistFromJson(Map<String, dynamic> json) {
  return _Droplist.fromJson(json);
}

/// @nodoc
class _$DroplistTearOff {
  const _$DroplistTearOff();

// ignore: unused_element
  _Droplist call(
      {@required DateTime date, @required int week, @required String link}) {
    return _Droplist(
      date: date,
      week: week,
      link: link,
    );
  }

// ignore: unused_element
  Droplist fromJson(Map<String, Object> json) {
    return Droplist.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Droplist = _$DroplistTearOff();

/// @nodoc
mixin _$Droplist {
  DateTime get date;
  int get week;
  String get link;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DroplistCopyWith<Droplist> get copyWith;
}

/// @nodoc
abstract class $DroplistCopyWith<$Res> {
  factory $DroplistCopyWith(Droplist value, $Res Function(Droplist) then) =
      _$DroplistCopyWithImpl<$Res>;
  $Res call({DateTime date, int week, String link});
}

/// @nodoc
class _$DroplistCopyWithImpl<$Res> implements $DroplistCopyWith<$Res> {
  _$DroplistCopyWithImpl(this._value, this._then);

  final Droplist _value;
  // ignore: unused_field
  final $Res Function(Droplist) _then;

  @override
  $Res call({
    Object date = freezed,
    Object week = freezed,
    Object link = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      week: week == freezed ? _value.week : week as int,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

/// @nodoc
abstract class _$DroplistCopyWith<$Res> implements $DroplistCopyWith<$Res> {
  factory _$DroplistCopyWith(_Droplist value, $Res Function(_Droplist) then) =
      __$DroplistCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, int week, String link});
}

/// @nodoc
class __$DroplistCopyWithImpl<$Res> extends _$DroplistCopyWithImpl<$Res>
    implements _$DroplistCopyWith<$Res> {
  __$DroplistCopyWithImpl(_Droplist _value, $Res Function(_Droplist) _then)
      : super(_value, (v) => _then(v as _Droplist));

  @override
  _Droplist get _value => super._value as _Droplist;

  @override
  $Res call({
    Object date = freezed,
    Object week = freezed,
    Object link = freezed,
  }) {
    return _then(_Droplist(
      date: date == freezed ? _value.date : date as DateTime,
      week: week == freezed ? _value.week : week as int,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Droplist implements _Droplist {
  const _$_Droplist(
      {@required this.date, @required this.week, @required this.link})
      : assert(date != null),
        assert(week != null),
        assert(link != null);

  factory _$_Droplist.fromJson(Map<String, dynamic> json) =>
      _$_$_DroplistFromJson(json);

  @override
  final DateTime date;
  @override
  final int week;
  @override
  final String link;

  @override
  String toString() {
    return 'Droplist(date: $date, week: $week, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Droplist &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.week, week) ||
                const DeepCollectionEquality().equals(other.week, week)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(week) ^
      const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  _$DroplistCopyWith<_Droplist> get copyWith =>
      __$DroplistCopyWithImpl<_Droplist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DroplistToJson(this);
  }
}

abstract class _Droplist implements Droplist {
  const factory _Droplist(
      {@required DateTime date,
      @required int week,
      @required String link}) = _$_Droplist;

  factory _Droplist.fromJson(Map<String, dynamic> json) = _$_Droplist.fromJson;

  @override
  DateTime get date;
  @override
  int get week;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$DroplistCopyWith<_Droplist> get copyWith;
}
