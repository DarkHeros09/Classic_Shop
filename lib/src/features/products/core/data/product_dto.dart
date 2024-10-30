import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'product_dto.mapper.dart';

@MappableClass()
class ProductDTO with ProductDTOMappable {
  const ProductDTO({
    required this.id,
    required this.name,
    required this.productId,
    required this.categoryId,
    required this.brandId,
    required this.brandName,
    required this.productSku,
    required this.qtyInStock,
    required this.productImage_1,
    required this.productImage_2,
    required this.productImage_3,
    required this.sizeValue,
    required this.colorValue,
    required this.price,
    required this.parentProductActive,
    required this.active,
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

  factory ProductDTO.fromDomain(Product _) {
    return ProductDTO(
      id: _.id,
      name: _.name,
      productId: _.productId,
      categoryId: _.categoryId,
      brandId: _.brandId,
      brandName: _.brandName,
      productSku: _.productSku,
      qtyInStock: _.qtyInStock,
      productImage_1: _.productImage1,
      productImage_2: _.productImage2,
      productImage_3: _.productImage3,
      sizeValue: _.size,
      colorValue: _.color,
      price: _.price,
      active: _.active,
      parentProductActive: _.parentProductActive,
      createdAt: _.createdAt,
      updatedAt: _.updatedAt,
      categoryPromoId: _.categoryPromoId,
      categoryPromoName: _.categoryPromoName,
      categoryPromoDescription: _.categoryPromoDescription,
      categoryPromoDiscountRate: _.categoryPromoDiscountRate,
      categoryPromoActive: _.categoryPromoActive,
      categoryPromoStartDate: _.categoryPromoStartDate,
      categoryPromoEndDate: _.categoryPromoEndDate,
      brandPromoId: _.brandPromoId,
      brandPromoName: _.brandPromoName,
      brandPromoDescription: _.brandPromoDescription,
      brandPromoDiscountRate: _.brandPromoDiscountRate,
      brandPromoActive: _.brandPromoActive,
      brandPromoStartDate: _.brandPromoStartDate,
      brandPromoEndDate: _.brandPromoEndDate,
      productPromoId: _.productPromoId,
      productPromoName: _.productPromoName,
      productPromoDescription: _.productPromoDescription,
      productPromoDiscountRate: _.productPromoDiscountRate,
      productPromoActive: _.productPromoActive,
      productPromoStartDate: _.productPromoStartDate,
      productPromoEndDate: _.productPromoEndDate,
      nextAvailable: _.nextAvailable,
    );
  }

  final int id;
  final String name;
  final int productId;
  final int categoryId;
  final int brandId;
  final String brandName;
  final int productSku;
  final int qtyInStock;
  final String productImage_1;
  final String productImage_2;
  final String productImage_3;
  final String sizeValue;
  final String colorValue;
  final String price;
  final bool parentProductActive;
  final bool active;
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

  Product toDomain() {
    return Product(
      id: id,
      name: name,
      productId: productId,
      categoryId: categoryId,
      brandId: brandId,
      brandName: brandName,
      productSku: productSku,
      qtyInStock: qtyInStock,
      productImage1: productImage_1,
      productImage2: productImage_2,
      productImage3: productImage_3,
      size: sizeValue,
      color: colorValue,
      price: price,
      active: active,
      parentProductActive: parentProductActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
      categoryPromoId: categoryPromoId,
      categoryPromoName: categoryPromoName,
      categoryPromoDescription: categoryPromoDescription,
      categoryPromoDiscountRate: categoryPromoDiscountRate,
      categoryPromoActive: categoryPromoActive,
      categoryPromoStartDate: categoryPromoStartDate,
      categoryPromoEndDate: categoryPromoEndDate,
      brandPromoId: brandPromoId,
      brandPromoName: brandPromoName,
      brandPromoDescription: brandPromoDescription,
      brandPromoDiscountRate: brandPromoDiscountRate,
      brandPromoActive: brandPromoActive,
      brandPromoStartDate: brandPromoStartDate,
      brandPromoEndDate: brandPromoEndDate,
      productPromoId: productPromoId,
      productPromoName: productPromoName,
      productPromoDescription: productPromoDescription,
      productPromoDiscountRate: productPromoDiscountRate,
      productPromoActive: productPromoActive,
      productPromoStartDate: productPromoStartDate,
      productPromoEndDate: productPromoEndDate,
      nextAvailable: nextAvailable,
    );
  }
}
