import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supplier_mobile/domain/remote/products/keywords.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required String category,
    @required String name,
    @required Keywords keywords,
  }) = _Product;
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
