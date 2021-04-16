import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jiffy/jiffy.dart';
import 'package:supplier_mobile/infrastructure/webhooks/embed_field.dart';
import 'package:supplier_mobile/infrastructure/webhooks/message_embed_footer.dart';
import 'package:supplier_mobile/infrastructure/webhooks/message_embed_thumbnail.dart';

part 'message_embed.g.dart';

@JsonSerializable(explicitToJson: true)
class MessageEmbed {
  MessageEmbed({
    @required this.title,
    @required this.footer,
    @required this.fields,
    @required String color,
    @required DateTime timestamp,
    this.thumbnail,
  })  : color = int.parse(color.replaceAll('#', ''), radix: 16),
        timestamp = Jiffy(timestamp.toUtc()).format();

  factory MessageEmbed.fromJson(Map<String, dynamic> json) =>
      _$MessageEmbedFromJson(json);

  final String timestamp;
  final String title;
  final int color;
  final MessageEmbedThumbnail thumbnail;
  final MessageEmbedFooter footer;
  final List<EmbedField> fields;

  Map<String, dynamic> toJson() => _$MessageEmbedToJson(this);
}
