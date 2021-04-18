// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colors_keywords.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorsKeywords _$ColorsKeywordsFromJson(Map<String, dynamic> json) {
  return ColorsKeywords(
    positive: (json['positive'] as List)?.map((e) => e as String)?.toList(),
    negative: (json['negative'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ColorsKeywordsToJson(ColorsKeywords instance) =>
    <String, dynamic>{
      'positive': instance.positive,
      'negative': instance.negative,
    };
