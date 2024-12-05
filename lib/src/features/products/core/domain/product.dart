import 'package:dart_mappable/dart_mappable.dart';

part 'product.mapper.dart';

@MappableClass()
class Product with ProductMappable {
  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.productId,
    required this.categoryId,
    required this.brandId,
    required this.brandName,
    required this.productSku,
    required this.qtyInStock,
    required this.productImage1,
    required this.productImage2,
    required this.productImage3,
    // required this.size,
    required this.color,
    required this.price,
    required this.active,
    required this.parentProductActive,
    required this.createdAt,
    required this.updatedAt,
    required this.categoryPromoId,
    required this.categoryPromoName,
    required this.categoryPromoDescription,
    required this.categoryPromoDiscountRate,
    required this.categoryPromoActive,
    required this.categoryPromoStartDate,
    required this.categoryPromoEndDate,
    required this.brandPromoId,
    required this.brandPromoName,
    required this.brandPromoDescription,
    required this.brandPromoDiscountRate,
    required this.brandPromoActive,
    required this.brandPromoStartDate,
    required this.brandPromoEndDate,
    required this.productPromoId,
    required this.productPromoName,
    required this.productPromoDescription,
    required this.productPromoDiscountRate,
    required this.productPromoActive,
    required this.productPromoStartDate,
    required this.productPromoEndDate,
    required this.nextAvailable,
  });
  final int id;
  final String name;
  final String description;
  final int productId;
  final int categoryId;
  final int brandId;
  final String brandName;
  final int productSku;
  final int qtyInStock;
  final String productImage1;
  final String productImage2;
  final String productImage3;
  // final String size;
  final String color;
  final String price;
  final bool active;
  final bool parentProductActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int? categoryPromoId;
  final String? categoryPromoName;
  final String? categoryPromoDescription;
  final int? categoryPromoDiscountRate;
  final bool? categoryPromoActive;
  final DateTime? categoryPromoStartDate;
  final DateTime? categoryPromoEndDate;
  final int? brandPromoId;
  final String? brandPromoName;
  final String? brandPromoDescription;
  final int? brandPromoDiscountRate;
  final bool? brandPromoActive;
  final DateTime? brandPromoStartDate;
  final DateTime? brandPromoEndDate;
  final int? productPromoId;
  final String? productPromoName;
  final String? productPromoDescription;
  final int? productPromoDiscountRate;
  final bool? productPromoActive;
  final DateTime? productPromoStartDate;
  final DateTime? productPromoEndDate;
  final bool? nextAvailable;
}
