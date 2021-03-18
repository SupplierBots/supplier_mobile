// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_keywords.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductKeywords _$_$_ProductKeywordsFromJson(Map<String, dynamic> json) {
  return _$_ProductKeywords(
    name: json['name'] as String,
    positive: (json['positive'] as List)?.map((e) => e as String)?.toList(),
    negative: (json['negative'] as List)?.map((e) => e as String)?.toList(),
    multi: (json['multi'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductKeywordsToJson(_$_ProductKeywords instance) =>
    <String, dynamic>{
      'name': instance.name,
      'positive': instance.positive,
      'negative': instance.negative,
      'multi': instance.multi,
    };
