import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_keywords.freezed.dart';
part 'product_keywords.g.dart';

@freezed
abstract class ProductKeywords with _$ProductKeywords {
  const factory ProductKeywords({
    @required String name,
    @required List<String> positive,
    @required List<String> negative,
    @required List<String> multi,
  }) = _ProductKeywords;
  factory ProductKeywords.fromJson(Map<String, dynamic> json) =>
      _$ProductKeywordsFromJson(json);
}
