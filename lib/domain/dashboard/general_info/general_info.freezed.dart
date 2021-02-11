// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'general_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GeneralInfo _$GeneralInfoFromJson(Map<String, dynamic> json) {
  return _GeneralInfo.fromJson(json);
}

/// @nodoc
class _$GeneralInfoTearOff {
  const _$GeneralInfoTearOff();

// ignore: unused_element
  _GeneralInfo call(
      {@required String news,
      @required String tips,
      @required String version}) {
    return _GeneralInfo(
      news: news,
      tips: tips,
      version: version,
    );
  }

// ignore: unused_element
  GeneralInfo fromJson(Map<String, Object> json) {
    return GeneralInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GeneralInfo = _$GeneralInfoTearOff();

/// @nodoc
mixin _$GeneralInfo {
  String get news;
  String get tips;
  String get version;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeneralInfoCopyWith<GeneralInfo> get copyWith;
}

/// @nodoc
abstract class $GeneralInfoCopyWith<$Res> {
  factory $GeneralInfoCopyWith(
          GeneralInfo value, $Res Function(GeneralInfo) then) =
      _$GeneralInfoCopyWithImpl<$Res>;
  $Res call({String news, String tips, String version});
}

/// @nodoc
class _$GeneralInfoCopyWithImpl<$Res> implements $GeneralInfoCopyWith<$Res> {
  _$GeneralInfoCopyWithImpl(this._value, this._then);

  final GeneralInfo _value;
  // ignore: unused_field
  final $Res Function(GeneralInfo) _then;

  @override
  $Res call({
    Object news = freezed,
    Object tips = freezed,
    Object version = freezed,
  }) {
    return _then(_value.copyWith(
      news: news == freezed ? _value.news : news as String,
      tips: tips == freezed ? _value.tips : tips as String,
      version: version == freezed ? _value.version : version as String,
    ));
  }
}

/// @nodoc
abstract class _$GeneralInfoCopyWith<$Res>
    implements $GeneralInfoCopyWith<$Res> {
  factory _$GeneralInfoCopyWith(
          _GeneralInfo value, $Res Function(_GeneralInfo) then) =
      __$GeneralInfoCopyWithImpl<$Res>;
  @override
  $Res call({String news, String tips, String version});
}

/// @nodoc
class __$GeneralInfoCopyWithImpl<$Res> extends _$GeneralInfoCopyWithImpl<$Res>
    implements _$GeneralInfoCopyWith<$Res> {
  __$GeneralInfoCopyWithImpl(
      _GeneralInfo _value, $Res Function(_GeneralInfo) _then)
      : super(_value, (v) => _then(v as _GeneralInfo));

  @override
  _GeneralInfo get _value => super._value as _GeneralInfo;

  @override
  $Res call({
    Object news = freezed,
    Object tips = freezed,
    Object version = freezed,
  }) {
    return _then(_GeneralInfo(
      news: news == freezed ? _value.news : news as String,
      tips: tips == freezed ? _value.tips : tips as String,
      version: version == freezed ? _value.version : version as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GeneralInfo implements _GeneralInfo {
  const _$_GeneralInfo(
      {@required this.news, @required this.tips, @required this.version})
      : assert(news != null),
        assert(tips != null),
        assert(version != null);

  factory _$_GeneralInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_GeneralInfoFromJson(json);

  @override
  final String news;
  @override
  final String tips;
  @override
  final String version;

  @override
  String toString() {
    return 'GeneralInfo(news: $news, tips: $tips, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeneralInfo &&
            (identical(other.news, news) ||
                const DeepCollectionEquality().equals(other.news, news)) &&
            (identical(other.tips, tips) ||
                const DeepCollectionEquality().equals(other.tips, tips)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(news) ^
      const DeepCollectionEquality().hash(tips) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$GeneralInfoCopyWith<_GeneralInfo> get copyWith =>
      __$GeneralInfoCopyWithImpl<_GeneralInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeneralInfoToJson(this);
  }
}

abstract class _GeneralInfo implements GeneralInfo {
  const factory _GeneralInfo(
      {@required String news,
      @required String tips,
      @required String version}) = _$_GeneralInfo;

  factory _GeneralInfo.fromJson(Map<String, dynamic> json) =
      _$_GeneralInfo.fromJson;

  @override
  String get news;
  @override
  String get tips;
  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$GeneralInfoCopyWith<_GeneralInfo> get copyWith;
}
