import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamps.freezed.dart';
part 'timestamps.g.dart';

@freezed
abstract class Timestamps with _$Timestamps {
  const factory Timestamps({
    @required String start,
    @required String atc,
    @required String submit,
  }) = _Timestamps;
  factory Timestamps.fromJson(Map<String, dynamic> json) =>
      _$TimestampsFromJson(json);
}
