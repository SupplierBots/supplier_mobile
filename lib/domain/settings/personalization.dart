import 'package:freezed_annotation/freezed_annotation.dart';

part 'personalization.freezed.dart';
part 'personalization.g.dart';

@freezed
abstract class Personalization with _$Personalization {
  const factory Personalization({
    bool enableVibrations,
    bool enableWarnings,
  }) = _Personalization;
  factory Personalization.fromJson(Map<String, dynamic> json) =>
      _$PersonalizationFromJson(json);
}
