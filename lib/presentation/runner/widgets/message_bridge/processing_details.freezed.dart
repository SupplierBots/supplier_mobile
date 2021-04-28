// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'processing_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProcessingDetails _$ProcessingDetailsFromJson(Map<String, dynamic> json) {
  return _ProcessingDetails.fromJson(json);
}

/// @nodoc
class _$ProcessingDetailsTearOff {
  const _$ProcessingDetailsTearOff();

// ignore: unused_element
  _ProcessingDetails call(
      {@required String billingErrors,
      @required String slug,
      @required int processingAttempt,
      @required bool highTraffic,
      @required bool bParameter,
      @required bool queued,
      @required bool cca,
      @required String orderNumber,
      @required bool waitedForCaptchaLoad,
      @required String captchaToken}) {
    return _ProcessingDetails(
      billingErrors: billingErrors,
      slug: slug,
      processingAttempt: processingAttempt,
      highTraffic: highTraffic,
      bParameter: bParameter,
      queued: queued,
      cca: cca,
      orderNumber: orderNumber,
      waitedForCaptchaLoad: waitedForCaptchaLoad,
      captchaToken: captchaToken,
    );
  }

// ignore: unused_element
  ProcessingDetails fromJson(Map<String, Object> json) {
    return ProcessingDetails.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProcessingDetails = _$ProcessingDetailsTearOff();

/// @nodoc
mixin _$ProcessingDetails {
  String get billingErrors;
  String get slug;
  int get processingAttempt;
  bool get highTraffic;
  bool get bParameter;
  bool get queued;
  bool get cca;
  String get orderNumber;
  bool get waitedForCaptchaLoad;
  String get captchaToken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProcessingDetailsCopyWith<ProcessingDetails> get copyWith;
}

/// @nodoc
abstract class $ProcessingDetailsCopyWith<$Res> {
  factory $ProcessingDetailsCopyWith(
          ProcessingDetails value, $Res Function(ProcessingDetails) then) =
      _$ProcessingDetailsCopyWithImpl<$Res>;
  $Res call(
      {String billingErrors,
      String slug,
      int processingAttempt,
      bool highTraffic,
      bool bParameter,
      bool queued,
      bool cca,
      String orderNumber,
      bool waitedForCaptchaLoad,
      String captchaToken});
}

/// @nodoc
class _$ProcessingDetailsCopyWithImpl<$Res>
    implements $ProcessingDetailsCopyWith<$Res> {
  _$ProcessingDetailsCopyWithImpl(this._value, this._then);

  final ProcessingDetails _value;
  // ignore: unused_field
  final $Res Function(ProcessingDetails) _then;

  @override
  $Res call({
    Object billingErrors = freezed,
    Object slug = freezed,
    Object processingAttempt = freezed,
    Object highTraffic = freezed,
    Object bParameter = freezed,
    Object queued = freezed,
    Object cca = freezed,
    Object orderNumber = freezed,
    Object waitedForCaptchaLoad = freezed,
    Object captchaToken = freezed,
  }) {
    return _then(_value.copyWith(
      billingErrors: billingErrors == freezed
          ? _value.billingErrors
          : billingErrors as String,
      slug: slug == freezed ? _value.slug : slug as String,
      processingAttempt: processingAttempt == freezed
          ? _value.processingAttempt
          : processingAttempt as int,
      highTraffic:
          highTraffic == freezed ? _value.highTraffic : highTraffic as bool,
      bParameter:
          bParameter == freezed ? _value.bParameter : bParameter as bool,
      queued: queued == freezed ? _value.queued : queued as bool,
      cca: cca == freezed ? _value.cca : cca as bool,
      orderNumber:
          orderNumber == freezed ? _value.orderNumber : orderNumber as String,
      waitedForCaptchaLoad: waitedForCaptchaLoad == freezed
          ? _value.waitedForCaptchaLoad
          : waitedForCaptchaLoad as bool,
      captchaToken: captchaToken == freezed
          ? _value.captchaToken
          : captchaToken as String,
    ));
  }
}

/// @nodoc
abstract class _$ProcessingDetailsCopyWith<$Res>
    implements $ProcessingDetailsCopyWith<$Res> {
  factory _$ProcessingDetailsCopyWith(
          _ProcessingDetails value, $Res Function(_ProcessingDetails) then) =
      __$ProcessingDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String billingErrors,
      String slug,
      int processingAttempt,
      bool highTraffic,
      bool bParameter,
      bool queued,
      bool cca,
      String orderNumber,
      bool waitedForCaptchaLoad,
      String captchaToken});
}

/// @nodoc
class __$ProcessingDetailsCopyWithImpl<$Res>
    extends _$ProcessingDetailsCopyWithImpl<$Res>
    implements _$ProcessingDetailsCopyWith<$Res> {
  __$ProcessingDetailsCopyWithImpl(
      _ProcessingDetails _value, $Res Function(_ProcessingDetails) _then)
      : super(_value, (v) => _then(v as _ProcessingDetails));

  @override
  _ProcessingDetails get _value => super._value as _ProcessingDetails;

  @override
  $Res call({
    Object billingErrors = freezed,
    Object slug = freezed,
    Object processingAttempt = freezed,
    Object highTraffic = freezed,
    Object bParameter = freezed,
    Object queued = freezed,
    Object cca = freezed,
    Object orderNumber = freezed,
    Object waitedForCaptchaLoad = freezed,
    Object captchaToken = freezed,
  }) {
    return _then(_ProcessingDetails(
      billingErrors: billingErrors == freezed
          ? _value.billingErrors
          : billingErrors as String,
      slug: slug == freezed ? _value.slug : slug as String,
      processingAttempt: processingAttempt == freezed
          ? _value.processingAttempt
          : processingAttempt as int,
      highTraffic:
          highTraffic == freezed ? _value.highTraffic : highTraffic as bool,
      bParameter:
          bParameter == freezed ? _value.bParameter : bParameter as bool,
      queued: queued == freezed ? _value.queued : queued as bool,
      cca: cca == freezed ? _value.cca : cca as bool,
      orderNumber:
          orderNumber == freezed ? _value.orderNumber : orderNumber as String,
      waitedForCaptchaLoad: waitedForCaptchaLoad == freezed
          ? _value.waitedForCaptchaLoad
          : waitedForCaptchaLoad as bool,
      captchaToken: captchaToken == freezed
          ? _value.captchaToken
          : captchaToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProcessingDetails implements _ProcessingDetails {
  const _$_ProcessingDetails(
      {@required this.billingErrors,
      @required this.slug,
      @required this.processingAttempt,
      @required this.highTraffic,
      @required this.bParameter,
      @required this.queued,
      @required this.cca,
      @required this.orderNumber,
      @required this.waitedForCaptchaLoad,
      @required this.captchaToken})
      : assert(billingErrors != null),
        assert(slug != null),
        assert(processingAttempt != null),
        assert(highTraffic != null),
        assert(bParameter != null),
        assert(queued != null),
        assert(cca != null),
        assert(orderNumber != null),
        assert(waitedForCaptchaLoad != null),
        assert(captchaToken != null);

  factory _$_ProcessingDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_ProcessingDetailsFromJson(json);

  @override
  final String billingErrors;
  @override
  final String slug;
  @override
  final int processingAttempt;
  @override
  final bool highTraffic;
  @override
  final bool bParameter;
  @override
  final bool queued;
  @override
  final bool cca;
  @override
  final String orderNumber;
  @override
  final bool waitedForCaptchaLoad;
  @override
  final String captchaToken;

  @override
  String toString() {
    return 'ProcessingDetails(billingErrors: $billingErrors, slug: $slug, processingAttempt: $processingAttempt, highTraffic: $highTraffic, bParameter: $bParameter, queued: $queued, cca: $cca, orderNumber: $orderNumber, waitedForCaptchaLoad: $waitedForCaptchaLoad, captchaToken: $captchaToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProcessingDetails &&
            (identical(other.billingErrors, billingErrors) ||
                const DeepCollectionEquality()
                    .equals(other.billingErrors, billingErrors)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.processingAttempt, processingAttempt) ||
                const DeepCollectionEquality()
                    .equals(other.processingAttempt, processingAttempt)) &&
            (identical(other.highTraffic, highTraffic) ||
                const DeepCollectionEquality()
                    .equals(other.highTraffic, highTraffic)) &&
            (identical(other.bParameter, bParameter) ||
                const DeepCollectionEquality()
                    .equals(other.bParameter, bParameter)) &&
            (identical(other.queued, queued) ||
                const DeepCollectionEquality().equals(other.queued, queued)) &&
            (identical(other.cca, cca) ||
                const DeepCollectionEquality().equals(other.cca, cca)) &&
            (identical(other.orderNumber, orderNumber) ||
                const DeepCollectionEquality()
                    .equals(other.orderNumber, orderNumber)) &&
            (identical(other.waitedForCaptchaLoad, waitedForCaptchaLoad) ||
                const DeepCollectionEquality().equals(
                    other.waitedForCaptchaLoad, waitedForCaptchaLoad)) &&
            (identical(other.captchaToken, captchaToken) ||
                const DeepCollectionEquality()
                    .equals(other.captchaToken, captchaToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(billingErrors) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(processingAttempt) ^
      const DeepCollectionEquality().hash(highTraffic) ^
      const DeepCollectionEquality().hash(bParameter) ^
      const DeepCollectionEquality().hash(queued) ^
      const DeepCollectionEquality().hash(cca) ^
      const DeepCollectionEquality().hash(orderNumber) ^
      const DeepCollectionEquality().hash(waitedForCaptchaLoad) ^
      const DeepCollectionEquality().hash(captchaToken);

  @JsonKey(ignore: true)
  @override
  _$ProcessingDetailsCopyWith<_ProcessingDetails> get copyWith =>
      __$ProcessingDetailsCopyWithImpl<_ProcessingDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProcessingDetailsToJson(this);
  }
}

abstract class _ProcessingDetails implements ProcessingDetails {
  const factory _ProcessingDetails(
      {@required String billingErrors,
      @required String slug,
      @required int processingAttempt,
      @required bool highTraffic,
      @required bool bParameter,
      @required bool queued,
      @required bool cca,
      @required String orderNumber,
      @required bool waitedForCaptchaLoad,
      @required String captchaToken}) = _$_ProcessingDetails;

  factory _ProcessingDetails.fromJson(Map<String, dynamic> json) =
      _$_ProcessingDetails.fromJson;

  @override
  String get billingErrors;
  @override
  String get slug;
  @override
  int get processingAttempt;
  @override
  bool get highTraffic;
  @override
  bool get bParameter;
  @override
  bool get queued;
  @override
  bool get cca;
  @override
  String get orderNumber;
  @override
  bool get waitedForCaptchaLoad;
  @override
  String get captchaToken;
  @override
  @JsonKey(ignore: true)
  _$ProcessingDetailsCopyWith<_ProcessingDetails> get copyWith;
}
