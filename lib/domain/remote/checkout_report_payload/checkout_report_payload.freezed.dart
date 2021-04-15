// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'checkout_report_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CheckoutReportPayload _$CheckoutReportPayloadFromJson(
    Map<String, dynamic> json) {
  return _CheckoutReportPayload.fromJson(json);
}

/// @nodoc
class _$CheckoutReportPayloadTearOff {
  const _$CheckoutReportPayloadTearOff();

// ignore: unused_element
  _CheckoutReportPayload call(
      {@required int attempt,
      @required int checkoutDelay,
      @required String region,
      @required TaskResult result,
      @required ItemDetails item}) {
    return _CheckoutReportPayload(
      attempt: attempt,
      checkoutDelay: checkoutDelay,
      region: region,
      result: result,
      item: item,
    );
  }

// ignore: unused_element
  CheckoutReportPayload fromJson(Map<String, Object> json) {
    return CheckoutReportPayload.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CheckoutReportPayload = _$CheckoutReportPayloadTearOff();

/// @nodoc
mixin _$CheckoutReportPayload {
  int get attempt;
  int get checkoutDelay;
  String get region;
  TaskResult get result;
  ItemDetails get item;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CheckoutReportPayloadCopyWith<CheckoutReportPayload> get copyWith;
}

/// @nodoc
abstract class $CheckoutReportPayloadCopyWith<$Res> {
  factory $CheckoutReportPayloadCopyWith(CheckoutReportPayload value,
          $Res Function(CheckoutReportPayload) then) =
      _$CheckoutReportPayloadCopyWithImpl<$Res>;
  $Res call(
      {int attempt,
      int checkoutDelay,
      String region,
      TaskResult result,
      ItemDetails item});

  $TaskResultCopyWith<$Res> get result;
  $ItemDetailsCopyWith<$Res> get item;
}

/// @nodoc
class _$CheckoutReportPayloadCopyWithImpl<$Res>
    implements $CheckoutReportPayloadCopyWith<$Res> {
  _$CheckoutReportPayloadCopyWithImpl(this._value, this._then);

  final CheckoutReportPayload _value;
  // ignore: unused_field
  final $Res Function(CheckoutReportPayload) _then;

  @override
  $Res call({
    Object attempt = freezed,
    Object checkoutDelay = freezed,
    Object region = freezed,
    Object result = freezed,
    Object item = freezed,
  }) {
    return _then(_value.copyWith(
      attempt: attempt == freezed ? _value.attempt : attempt as int,
      checkoutDelay: checkoutDelay == freezed
          ? _value.checkoutDelay
          : checkoutDelay as int,
      region: region == freezed ? _value.region : region as String,
      result: result == freezed ? _value.result : result as TaskResult,
      item: item == freezed ? _value.item : item as ItemDetails,
    ));
  }

  @override
  $TaskResultCopyWith<$Res> get result {
    if (_value.result == null) {
      return null;
    }
    return $TaskResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }

  @override
  $ItemDetailsCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemDetailsCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$CheckoutReportPayloadCopyWith<$Res>
    implements $CheckoutReportPayloadCopyWith<$Res> {
  factory _$CheckoutReportPayloadCopyWith(_CheckoutReportPayload value,
          $Res Function(_CheckoutReportPayload) then) =
      __$CheckoutReportPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {int attempt,
      int checkoutDelay,
      String region,
      TaskResult result,
      ItemDetails item});

  @override
  $TaskResultCopyWith<$Res> get result;
  @override
  $ItemDetailsCopyWith<$Res> get item;
}

/// @nodoc
class __$CheckoutReportPayloadCopyWithImpl<$Res>
    extends _$CheckoutReportPayloadCopyWithImpl<$Res>
    implements _$CheckoutReportPayloadCopyWith<$Res> {
  __$CheckoutReportPayloadCopyWithImpl(_CheckoutReportPayload _value,
      $Res Function(_CheckoutReportPayload) _then)
      : super(_value, (v) => _then(v as _CheckoutReportPayload));

  @override
  _CheckoutReportPayload get _value => super._value as _CheckoutReportPayload;

  @override
  $Res call({
    Object attempt = freezed,
    Object checkoutDelay = freezed,
    Object region = freezed,
    Object result = freezed,
    Object item = freezed,
  }) {
    return _then(_CheckoutReportPayload(
      attempt: attempt == freezed ? _value.attempt : attempt as int,
      checkoutDelay: checkoutDelay == freezed
          ? _value.checkoutDelay
          : checkoutDelay as int,
      region: region == freezed ? _value.region : region as String,
      result: result == freezed ? _value.result : result as TaskResult,
      item: item == freezed ? _value.item : item as ItemDetails,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CheckoutReportPayload implements _CheckoutReportPayload {
  const _$_CheckoutReportPayload(
      {@required this.attempt,
      @required this.checkoutDelay,
      @required this.region,
      @required this.result,
      @required this.item})
      : assert(attempt != null),
        assert(checkoutDelay != null),
        assert(region != null),
        assert(result != null),
        assert(item != null);

  factory _$_CheckoutReportPayload.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutReportPayloadFromJson(json);

  @override
  final int attempt;
  @override
  final int checkoutDelay;
  @override
  final String region;
  @override
  final TaskResult result;
  @override
  final ItemDetails item;

  @override
  String toString() {
    return 'CheckoutReportPayload(attempt: $attempt, checkoutDelay: $checkoutDelay, region: $region, result: $result, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutReportPayload &&
            (identical(other.attempt, attempt) ||
                const DeepCollectionEquality()
                    .equals(other.attempt, attempt)) &&
            (identical(other.checkoutDelay, checkoutDelay) ||
                const DeepCollectionEquality()
                    .equals(other.checkoutDelay, checkoutDelay)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(attempt) ^
      const DeepCollectionEquality().hash(checkoutDelay) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$CheckoutReportPayloadCopyWith<_CheckoutReportPayload> get copyWith =>
      __$CheckoutReportPayloadCopyWithImpl<_CheckoutReportPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutReportPayloadToJson(this);
  }
}

abstract class _CheckoutReportPayload implements CheckoutReportPayload {
  const factory _CheckoutReportPayload(
      {@required int attempt,
      @required int checkoutDelay,
      @required String region,
      @required TaskResult result,
      @required ItemDetails item}) = _$_CheckoutReportPayload;

  factory _CheckoutReportPayload.fromJson(Map<String, dynamic> json) =
      _$_CheckoutReportPayload.fromJson;

  @override
  int get attempt;
  @override
  int get checkoutDelay;
  @override
  String get region;
  @override
  TaskResult get result;
  @override
  ItemDetails get item;
  @override
  @JsonKey(ignore: true)
  _$CheckoutReportPayloadCopyWith<_CheckoutReportPayload> get copyWith;
}
