import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required int productId,
    required int categoryId,
    required int brandId,
    required String brandName,
    required int productSku,
    required int qtyInStock,
    required String productImage1,
    required String productImage2,
    required String productImage3,
    required String size,
    required String color,
    required String price,
    required bool active,
    required bool parentProductActive,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int? categoryPromoId,
    required String? categoryPromoName,
    required String? categoryPromoDescription,
    required int? categoryPromoDiscountRate,
    required bool? categoryPromoActive,
    required DateTime? categoryPromoStartDate,
    required DateTime? categoryPromoEndDate,
    required int? brandPromoId,
    required String? brandPromoName,
    required String? brandPromoDescription,
    required int? brandPromoDiscountRate,
    required bool? brandPromoActive,
    required DateTime? brandPromoStartDate,
    required DateTime? brandPromoEndDate,
    required int? productPromoId,
    required String? productPromoName,
    required String? productPromoDescription,
    required int? productPromoDiscountRate,
    required bool? productPromoActive,
    required DateTime? productPromoStartDate,
    required DateTime? productPromoEndDate,
    required bool nextAvailable,
  }) = _Product;
  const Product._();
}
