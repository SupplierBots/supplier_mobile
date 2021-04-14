// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keywords.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Keywords _$_$_KeywordsFromJson(Map<String, dynamic> json) {
  return _$_Keywords(
    positive: (json['positive'] as List)?.map((e) => e as String)?.toList(),
    negative: (json['negative'] as List)?.map((e) => e as String)?.toList(),
    multi: (json['multi'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_KeywordsToJson(_$_Keywords instance) =>
    <String, dynamic>{
      'positive': instance.positive,
      'negative': instance.negative,
      'multi': instance.multi,
    };
