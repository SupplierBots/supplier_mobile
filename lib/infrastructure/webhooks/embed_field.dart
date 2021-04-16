import 'package:freezed_annotation/freezed_annotation.dart';
part 'embed_field.g.dart';

@JsonSerializable()
class EmbedField {
  EmbedField({
    @required this.name,
    @required this.value,
    this.inline = false,
  });
  factory EmbedField.fromJson(Map<String, dynamic> json) =>
      _$EmbedFieldFromJson(json);

  final String name;
  final String value;
  final bool inline;

  Map<String, dynamic> toJson() => _$EmbedFieldToJson(this);
}
