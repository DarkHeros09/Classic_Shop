import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';
// part 'product_dto.worker.g.dart';

// @SquadronService(web: false, pool: false)
// class ProductDTOService {
//   @SquadronMethod()
//   Future<ProductDTO> doSomething(Map<String, dynamic> json) async =>
//       ProductDTO.fromJson(json);
// }

@freezed
class ProductDTO with _$ProductDTO {
  const factory ProductDTO({
    required int id,
    required String name,
    required int productId,
    required int categoryId,
    required int brandId,
    required String brandName,
    required int productSku,
    required int qtyInStock,
    required String productImage_1,
    required String productImage_2,
    required String productImage_3,
    required String sizeValue,
    required String colorValue,
    required String price,
    required bool parentProductActive,
    required bool active,
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
  }) = _ProductDTO;
  const ProductDTO._();
  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);

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
