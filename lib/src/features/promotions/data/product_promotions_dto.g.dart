// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_promotions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPromotionsDTO _$$_ProductPromotionsDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProductPromotionsDTO(
      productId: json['product_id'] as int?,
      promotionId: json['promotion_id'] as int?,
      productPromotionImage: json['product_promotion_image'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_ProductPromotionsDTOToJson(
        _$_ProductPromotionsDTO instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'promotion_id': instance.promotionId,
      'product_promotion_image': instance.productPromotionImage,
      'active': instance.active,
    };
