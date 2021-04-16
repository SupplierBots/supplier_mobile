import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_embed_footer.g.dart';

@JsonSerializable()
class MessageEmbedFooter {
  MessageEmbedFooter({
    @required this.text,
    // ignore: non_constant_identifier_names
    @required this.icon_url,
  });

  factory MessageEmbedFooter.fromJson(Map<String, dynamic> json) =>
      _$MessageEmbedFooterFromJson(json);

  final String text;
  // ignore: non_constant_identifier_names
  final String icon_url;

  Map<String, dynamic> toJson() => _$MessageEmbedFooterToJson(this);
}
