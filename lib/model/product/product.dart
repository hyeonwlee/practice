import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {

  const factory Product({
    required String images,
  }) = _Product;

  const Product._();

  factory Product.empty() {
    return const Product(
      images: '',
    );
  }

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}