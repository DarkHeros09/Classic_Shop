import 'package:classic_shop/src/features/promotions/data/brand_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/category_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/product_extensions.dart';
import 'package:classic_shop/src/features/promotions/data/product_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/domain/promotions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotions_dto.freezed.dart';
// part 'promotions_dto.g.dart';

@freezed
class PromotionsDTO with _$PromotionsDTO {
  const factory PromotionsDTO({
    required List<ProductPromotionsDTO>? productPromotions,
    required List<BrandPromotionsDTO>? brandPromotions,
    required List<CategoryPromotionsDTO>? categoryPromotions,
  }) = _PromotionsDTO;
  const PromotionsDTO._();
  // factory PromotionsDTO.fromJson(Map<String, dynamic> json) =>
  //     _$PromotionsDTOFromJson(json);

  factory PromotionsDTO.fromDomain(Promotions _) {
    return PromotionsDTO(
      productPromotions:
          _.productPromotions?.map(ProductPromotionsDTO.fromDomain).toList(),
      brandPromotions:
          _.brandPromotions?.map(BrandPromotionsDTO.fromDomain).toList(),
      categoryPromotions:
          _.categoryPromotions?.map(CategoryPromotionsDTO.fromDomain).toList(),
    );
  }

  Promotions toDomain() {
    return Promotions(
      productPromotions: productPromotions?.toDomain(),
      brandPromotions: brandPromotions?.toDomain(),
      categoryPromotions: categoryPromotions?.toDomain(),
    );
  }
}
