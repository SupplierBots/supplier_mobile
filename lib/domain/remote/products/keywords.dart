import 'package:freezed_annotation/freezed_annotation.dart';

part 'keywords.freezed.dart';
part 'keywords.g.dart';

@freezed
abstract class Keywords with _$Keywords {
  const factory Keywords({
    @required List<String> positive,
    @required List<String> negative,
    @required List<String> multi,
  }) = _Keywords;

  factory Keywords.fromJson(Map<String, dynamic> json) =>
      _$KeywordsFromJson(json);
}
