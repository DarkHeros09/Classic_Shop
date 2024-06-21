import 'package:classic_shop/src/features/promotions/domain/category_promotions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_promotions_dto.freezed.dart';
part 'category_promotions_dto.g.dart';

@freezed
class CategoryPromotionsDTO with _$CategoryPromotionsDTO {
  const factory CategoryPromotionsDTO({
    required int? categoryId,
    required int? promotionId,
    required String? categoryPromotionImage,
    required bool? active,
    required DateTime? startDate,
    required DateTime? endDate,
  }) = _CategoryPromotionsDTO;
  const CategoryPromotionsDTO._();
  factory CategoryPromotionsDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryPromotionsDTOFromJson(json);

  factory CategoryPromotionsDTO.fromDomain(CategoryPromotions _) {
    return CategoryPromotionsDTO(
      categoryId: _.categoryId,
      promotionId: _.promotionId,
      categoryPromotionImage: _.categoryPromotionImage,
      active: _.active,
      startDate: _.startDate,
      endDate: _.endDate,
    );
  }

  CategoryPromotions toDomain() {
    return CategoryPromotions(
      categoryId: categoryId,
      promotionId: promotionId,
      categoryPromotionImage: categoryPromotionImage,
      active: active,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
