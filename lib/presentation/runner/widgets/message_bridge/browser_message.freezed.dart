// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'browser_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BrowserMessage _$BrowserMessageFromJson(Map<String, dynamic> json) {
  return _BrowserMessage.fromJson(json);
}

/// @nodoc
class _$BrowserMessageTearOff {
  const _$BrowserMessageTearOff();

// ignore: unused_element
  _BrowserMessage call({@required String action, dynamic details}) {
    return _BrowserMessage(
      action: action,
      details: details,
    );
  }

// ignore: unused_element
  BrowserMessage fromJson(Map<String, Object> json) {
    return BrowserMessage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BrowserMessage = _$BrowserMessageTearOff();

/// @nodoc
mixin _$BrowserMessage {
  String get action;
  dynamic get details;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BrowserMessageCopyWith<BrowserMessage> get copyWith;
}

/// @nodoc
abstract class $BrowserMessageCopyWith<$Res> {
  factory $BrowserMessageCopyWith(
          BrowserMessage value, $Res Function(BrowserMessage) then) =
      _$BrowserMessageCopyWithImpl<$Res>;
  $Res call({String action, dynamic details});
}

/// @nodoc
class _$BrowserMessageCopyWithImpl<$Res>
    implements $BrowserMessageCopyWith<$Res> {
  _$BrowserMessageCopyWithImpl(this._value, this._then);

  final BrowserMessage _value;
  // ignore: unused_field
  final $Res Function(BrowserMessage) _then;

  @override
  $Res call({
    Object action = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed ? _value.action : action as String,
      details: details == freezed ? _value.details : details as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$BrowserMessageCopyWith<$Res>
    implements $BrowserMessageCopyWith<$Res> {
  factory _$BrowserMessageCopyWith(
          _BrowserMessage value, $Res Function(_BrowserMessage) then) =
      __$BrowserMessageCopyWithImpl<$Res>;
  @override
  $Res call({String action, dynamic details});
}

/// @nodoc
class __$BrowserMessageCopyWithImpl<$Res>
    extends _$BrowserMessageCopyWithImpl<$Res>
    implements _$BrowserMessageCopyWith<$Res> {
  __$BrowserMessageCopyWithImpl(
      _BrowserMessage _value, $Res Function(_BrowserMessage) _then)
      : super(_value, (v) => _then(v as _BrowserMessage));

  @override
  _BrowserMessage get _value => super._value as _BrowserMessage;

  @override
  $Res call({
    Object action = freezed,
    Object details = freezed,
  }) {
    return _then(_BrowserMessage(
      action: action == freezed ? _value.action : action as String,
      details: details == freezed ? _value.details : details as dynamic,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BrowserMessage implements _BrowserMessage {
  const _$_BrowserMessage({@required this.action, this.details})
      : assert(action != null);

  factory _$_BrowserMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_BrowserMessageFromJson(json);

  @override
  final String action;
  @override
  final dynamic details;

  @override
  String toString() {
    return 'BrowserMessage(action: $action, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrowserMessage &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$BrowserMessageCopyWith<_BrowserMessage> get copyWith =>
      __$BrowserMessageCopyWithImpl<_BrowserMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BrowserMessageToJson(this);
  }
}

abstract class _BrowserMessage implements BrowserMessage {
  const factory _BrowserMessage({@required String action, dynamic details}) =
      _$_BrowserMessage;

  factory _BrowserMessage.fromJson(Map<String, dynamic> json) =
      _$_BrowserMessage.fromJson;

  @override
  String get action;
  @override
  dynamic get details;
  @override
  @JsonKey(ignore: true)
  _$BrowserMessageCopyWith<_BrowserMessage> get copyWith;
}
