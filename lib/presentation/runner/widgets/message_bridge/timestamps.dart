import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamps.freezed.dart';
part 'timestamps.g.dart';

@freezed
abstract class Timestamps with _$Timestamps {
  const factory Timestamps({
    @required int start,
    @required int atc,
    @required int finished,
    @required int submit,
  }) = _Timestamps;
  factory Timestamps.fromJson(Map<String, dynamic> json) =>
      _$TimestampsFromJson(json);
}
