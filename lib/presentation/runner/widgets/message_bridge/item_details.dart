import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_details.freezed.dart';
part 'item_details.g.dart';

@freezed
abstract class ItemDetails with _$ItemDetails {
  const factory ItemDetails({
    @required String name,
    @required String style,
    @required String size,
    @required String image,
  }) = _ItemDetails;
  factory ItemDetails.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailsFromJson(json);
}
