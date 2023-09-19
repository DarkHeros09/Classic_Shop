// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_promotions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryPromotionsDTO _$$_CategoryPromotionsDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryPromotionsDTO(
      categoryId: json['category_id'] as int?,
      promotionId: json['promotion_id'] as int?,
      categoryPromotionImage: json['category_promotion_image'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_CategoryPromotionsDTOToJson(
        _$_CategoryPromotionsDTO instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'promotion_id': instance.promotionId,
      'category_promotion_image': instance.categoryPromotionImage,
      'active': instance.active,
    };
