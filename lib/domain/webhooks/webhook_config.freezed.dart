// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'webhook_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WebhookConfig _$WebhookConfigFromJson(Map<String, dynamic> json) {
  return _WebhookConfig.fromJson(json);
}

/// @nodoc
class _$WebhookConfigTearOff {
  const _$WebhookConfigTearOff();

// ignore: unused_element
  _WebhookConfig call({@required String url, @required bool successOnly}) {
    return _WebhookConfig(
      url: url,
      successOnly: successOnly,
    );
  }

// ignore: unused_element
  WebhookConfig fromJson(Map<String, Object> json) {
    return WebhookConfig.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WebhookConfig = _$WebhookConfigTearOff();

/// @nodoc
mixin _$WebhookConfig {
  String get url;
  bool get successOnly;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WebhookConfigCopyWith<WebhookConfig> get copyWith;
}

/// @nodoc
abstract class $WebhookConfigCopyWith<$Res> {
  factory $WebhookConfigCopyWith(
          WebhookConfig value, $Res Function(WebhookConfig) then) =
      _$WebhookConfigCopyWithImpl<$Res>;
  $Res call({String url, bool successOnly});
}

/// @nodoc
class _$WebhookConfigCopyWithImpl<$Res>
    implements $WebhookConfigCopyWith<$Res> {
  _$WebhookConfigCopyWithImpl(this._value, this._then);

  final WebhookConfig _value;
  // ignore: unused_field
  final $Res Function(WebhookConfig) _then;

  @override
  $Res call({
    Object url = freezed,
    Object successOnly = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
      successOnly:
          successOnly == freezed ? _value.successOnly : successOnly as bool,
    ));
  }
}

/// @nodoc
abstract class _$WebhookConfigCopyWith<$Res>
    implements $WebhookConfigCopyWith<$Res> {
  factory _$WebhookConfigCopyWith(
          _WebhookConfig value, $Res Function(_WebhookConfig) then) =
      __$WebhookConfigCopyWithImpl<$Res>;
  @override
  $Res call({String url, bool successOnly});
}

/// @nodoc
class __$WebhookConfigCopyWithImpl<$Res>
    extends _$WebhookConfigCopyWithImpl<$Res>
    implements _$WebhookConfigCopyWith<$Res> {
  __$WebhookConfigCopyWithImpl(
      _WebhookConfig _value, $Res Function(_WebhookConfig) _then)
      : super(_value, (v) => _then(v as _WebhookConfig));

  @override
  _WebhookConfig get _value => super._value as _WebhookConfig;

  @override
  $Res call({
    Object url = freezed,
    Object successOnly = freezed,
  }) {
    return _then(_WebhookConfig(
      url: url == freezed ? _value.url : url as String,
      successOnly:
          successOnly == freezed ? _value.successOnly : successOnly as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WebhookConfig implements _WebhookConfig {
  const _$_WebhookConfig({@required this.url, @required this.successOnly})
      : assert(url != null),
        assert(successOnly != null);

  factory _$_WebhookConfig.fromJson(Map<String, dynamic> json) =>
      _$_$_WebhookConfigFromJson(json);

  @override
  final String url;
  @override
  final bool successOnly;

  @override
  String toString() {
    return 'WebhookConfig(url: $url, successOnly: $successOnly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WebhookConfig &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.successOnly, successOnly) ||
                const DeepCollectionEquality()
                    .equals(other.successOnly, successOnly)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(successOnly);

  @JsonKey(ignore: true)
  @override
  _$WebhookConfigCopyWith<_WebhookConfig> get copyWith =>
      __$WebhookConfigCopyWithImpl<_WebhookConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WebhookConfigToJson(this);
  }
}

abstract class _WebhookConfig implements WebhookConfig {
  const factory _WebhookConfig(
      {@required String url, @required bool successOnly}) = _$_WebhookConfig;

  factory _WebhookConfig.fromJson(Map<String, dynamic> json) =
      _$_WebhookConfig.fromJson;

  @override
  String get url;
  @override
  bool get successOnly;
  @override
  @JsonKey(ignore: true)
  _$WebhookConfigCopyWith<_WebhookConfig> get copyWith;
}
