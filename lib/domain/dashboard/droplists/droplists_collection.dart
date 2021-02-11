import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';

part 'droplists_collection.freezed.dart';
part 'droplists_collection.g.dart';

@freezed
abstract class DroplistCollection with _$DroplistCollection {
  const factory DroplistCollection({
    @required Droplist supreme,
    @required Droplist palace,
  }) = _DroplistCollection;
  factory DroplistCollection.fromJson(Map<String, dynamic> json) =>
      _$DroplistCollectionFromJson(json);
}
