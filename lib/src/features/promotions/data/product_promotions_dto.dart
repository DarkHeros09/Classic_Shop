import 'package:classic_shop/src/features/promotions/domain/product_promotions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_promotions_dto.freezed.dart';
part 'product_promotions_dto.g.dart';

@freezed
class ProductPromotionsDTO with _$ProductPromotionsDTO {
  const factory ProductPromotionsDTO({
    required int? productId,
    required int? promotionId,
    required String? productPromotionImage,
    required bool? active,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _ProductPromotionsDTO;
  const ProductPromotionsDTO._();
  factory ProductPromotionsDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductPromotionsDTOFromJson(json);

  factory ProductPromotionsDTO.fromDomain(ProductPromotions _) {
    return ProductPromotionsDTO(
      productId: _.productId,
      promotionId: _.promotionId,
      productPromotionImage: _.productPromotionImage,
      active: _.active,
      startDate: _.startDate,
      endDate: _.endDate,
    );
  }

  ProductPromotions toDomain() {
    return ProductPromotions(
      productId: productId,
      promotionId: promotionId,
      productPromotionImage: productPromotionImage,
      active: active,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
