// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'keywords.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Keywords _$KeywordsFromJson(Map<String, dynamic> json) {
  return _Keywords.fromJson(json);
}

/// @nodoc
class _$KeywordsTearOff {
  const _$KeywordsTearOff();

// ignore: unused_element
  _Keywords call(
      {@required List<String> positive,
      @required List<String> negative,
      @required List<String> multi}) {
    return _Keywords(
      positive: positive,
      negative: negative,
      multi: multi,
    );
  }

// ignore: unused_element
  Keywords fromJson(Map<String, Object> json) {
    return Keywords.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Keywords = _$KeywordsTearOff();

/// @nodoc
mixin _$Keywords {
  List<String> get positive;
  List<String> get negative;
  List<String> get multi;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $KeywordsCopyWith<Keywords> get copyWith;
}

/// @nodoc
abstract class $KeywordsCopyWith<$Res> {
  factory $KeywordsCopyWith(Keywords value, $Res Function(Keywords) then) =
      _$KeywordsCopyWithImpl<$Res>;
  $Res call({List<String> positive, List<String> negative, List<String> multi});
}

/// @nodoc
class _$KeywordsCopyWithImpl<$Res> implements $KeywordsCopyWith<$Res> {
  _$KeywordsCopyWithImpl(this._value, this._then);

  final Keywords _value;
  // ignore: unused_field
  final $Res Function(Keywords) _then;

  @override
  $Res call({
    Object positive = freezed,
    Object negative = freezed,
    Object multi = freezed,
  }) {
    return _then(_value.copyWith(
      positive:
          positive == freezed ? _value.positive : positive as List<String>,
      negative:
          negative == freezed ? _value.negative : negative as List<String>,
      multi: multi == freezed ? _value.multi : multi as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$KeywordsCopyWith<$Res> implements $KeywordsCopyWith<$Res> {
  factory _$KeywordsCopyWith(_Keywords value, $Res Function(_Keywords) then) =
      __$KeywordsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> positive, List<String> negative, List<String> multi});
}

/// @nodoc
class __$KeywordsCopyWithImpl<$Res> extends _$KeywordsCopyWithImpl<$Res>
    implements _$KeywordsCopyWith<$Res> {
  __$KeywordsCopyWithImpl(_Keywords _value, $Res Function(_Keywords) _then)
      : super(_value, (v) => _then(v as _Keywords));

  @override
  _Keywords get _value => super._value as _Keywords;

  @override
  $Res call({
    Object positive = freezed,
    Object negative = freezed,
    Object multi = freezed,
  }) {
    return _then(_Keywords(
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
class _$_Keywords implements _Keywords {
  const _$_Keywords(
      {@required this.positive, @required this.negative, @required this.multi})
      : assert(positive != null),
        assert(negative != null),
        assert(multi != null);

  factory _$_Keywords.fromJson(Map<String, dynamic> json) =>
      _$_$_KeywordsFromJson(json);

  @override
  final List<String> positive;
  @override
  final List<String> negative;
  @override
  final List<String> multi;

  @override
  String toString() {
    return 'Keywords(positive: $positive, negative: $negative, multi: $multi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Keywords &&
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
      const DeepCollectionEquality().hash(positive) ^
      const DeepCollectionEquality().hash(negative) ^
      const DeepCollectionEquality().hash(multi);

  @JsonKey(ignore: true)
  @override
  _$KeywordsCopyWith<_Keywords> get copyWith =>
      __$KeywordsCopyWithImpl<_Keywords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_KeywordsToJson(this);
  }
}

abstract class _Keywords implements Keywords {
  const factory _Keywords(
      {@required List<String> positive,
      @required List<String> negative,
      @required List<String> multi}) = _$_Keywords;

  factory _Keywords.fromJson(Map<String, dynamic> json) = _$_Keywords.fromJson;

  @override
  List<String> get positive;
  @override
  List<String> get negative;
  @override
  List<String> get multi;
  @override
  @JsonKey(ignore: true)
  _$KeywordsCopyWith<_Keywords> get copyWith;
}
