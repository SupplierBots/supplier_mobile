import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_keywords.g.dart';

@JsonSerializable()
class ColorsKeywords {
  ColorsKeywords({this.positive, this.negative});

  factory ColorsKeywords.fromJson(Map<String, dynamic> json) =>
      _$ColorsKeywordsFromJson(json);

  factory ColorsKeywords.fromList(List<String> list) {
    return ColorsKeywords(
      positive: list
          .where((c) => c.startsWith('+'))
          .map((c) => c.substring(1))
          .toList(),
      negative: list
          .where((c) => c.startsWith('-'))
          .map((c) => c.substring(1))
          .toList(),
    );
  }

  final List<String> positive;
  final List<String> negative;

  Map<String, dynamic> toJson() => _$ColorsKeywordsToJson(this);
}
