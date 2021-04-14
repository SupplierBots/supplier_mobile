import 'package:freezed_annotation/freezed_annotation.dart';

part 'browser_message.freezed.dart';
part 'browser_message.g.dart';

@freezed
abstract class BrowserMessage with _$BrowserMessage {
  const factory BrowserMessage({
    @required String action,
    dynamic details,
  }) = _BrowserMessage;
  factory BrowserMessage.fromJson(Map<String, dynamic> json) =>
      _$BrowserMessageFromJson(json);
}
