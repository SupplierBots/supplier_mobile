// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_embed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageEmbed _$MessageEmbedFromJson(Map<String, dynamic> json) {
  return MessageEmbed(
    title: json['title'] as String,
    footer: json['footer'] == null
        ? null
        : MessageEmbedFooter.fromJson(json['footer'] as Map<String, dynamic>),
    fields: (json['fields'] as List)
        ?.map((e) =>
            e == null ? null : EmbedField.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    color: json['color'] as String,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    thumbnail: json['thumbnail'] == null
        ? null
        : MessageEmbedThumbnail.fromJson(
            json['thumbnail'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageEmbedToJson(MessageEmbed instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'title': instance.title,
      'color': instance.color,
      'thumbnail': instance.thumbnail?.toJson(),
      'footer': instance.footer?.toJson(),
      'fields': instance.fields?.map((e) => e?.toJson())?.toList(),
    };
