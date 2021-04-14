import 'package:freezed_annotation/freezed_annotation.dart';

part 'delays.freezed.dart';
part 'delays.g.dart';

@freezed
abstract class Delays with _$Delays {
  const factory Delays({
    @required int minCheckout,
    @required int maxCheckout,
    @required int restocksCheckout,
    @required int refresh,
  }) = _Delays;
  factory Delays.fromJson(Map<String, dynamic> json) => _$DelaysFromJson(json);
}
