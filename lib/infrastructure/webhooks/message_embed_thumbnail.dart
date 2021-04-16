import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_embed_thumbnail.g.dart';

@JsonSerializable()
class MessageEmbedThumbnail {
  MessageEmbedThumbnail({
    this.url,
  });

  factory MessageEmbedThumbnail.fromJson(Map<String, dynamic> json) =>
      _$MessageEmbedThumbnailFromJson(json);

  final String url;

  Map<String, dynamic> toJson() => _$MessageEmbedThumbnailToJson(this);
}
