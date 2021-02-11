import 'package:freezed_annotation/freezed_annotation.dart';

part 'droplist.freezed.dart';
part 'droplist.g.dart';

@freezed
abstract class Droplist with _$Droplist {
  const factory Droplist({
    @required DateTime date,
    @required int week,
    @required String link,
  }) = _Droplist;
  factory Droplist.fromJson(Map<String, dynamic> json) =>
      _$DroplistFromJson(json);
}
