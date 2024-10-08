// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishListItemDTOImpl _$$WishListItemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$WishListItemDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      wishListId: (json['wish_list_id'] as num?)?.toInt(),
      productItemId: (json['product_item_id'] as num).toInt(),
      name: json['name'] as String?,
      productImage: json['product_image'] as String?,
      color: json['color'] as String?,
      size: json['size'] as String?,
      price: json['price'] as String?,
      active: json['active'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      categoryPromoId: (json['category_promo_id'] as num?)?.toInt(),
      categoryPromoName: json['category_promo_name'] as String?,
      categoryPromoDescription: json['category_promo_description'] as String?,
      categoryPromoDiscountRate:
          (json['category_promo_discount_rate'] as num?)?.toInt(),
      categoryPromoActive: json['category_promo_active'] as bool?,
      categoryPromoStartDate: json['category_promo_start_date'] == null
          ? null
          : DateTime.parse(json['category_promo_start_date'] as String),
      categoryPromoEndDate: json['category_promo_end_date'] == null
          ? null
          : DateTime.parse(json['category_promo_end_date'] as String),
      brandPromoId: (json['brand_promo_id'] as num?)?.toInt(),
      brandPromoName: json['brand_promo_name'] as String?,
      brandPromoDescription: json['brand_promo_description'] as String?,
      brandPromoDiscountRate:
          (json['brand_promo_discount_rate'] as num?)?.toInt(),
      brandPromoActive: json['brand_promo_active'] as bool?,
      brandPromoStartDate: json['brand_promo_start_date'] == null
          ? null
          : DateTime.parse(json['brand_promo_start_date'] as String),
      brandPromoEndDate: json['brand_promo_end_date'] == null
          ? null
          : DateTime.parse(json['brand_promo_end_date'] as String),
      productPromoId: (json['product_promo_id'] as num?)?.toInt(),
      productPromoName: json['product_promo_name'] as String?,
      productPromoDescription: json['product_promo_description'] as String?,
      productPromoDiscountRate:
          (json['product_promo_discount_rate'] as num?)?.toInt(),
      productPromoActive: json['product_promo_active'] as bool?,
      productPromoStartDate: json['product_promo_start_date'] == null
          ? null
          : DateTime.parse(json['product_promo_start_date'] as String),
      productPromoEndDate: json['product_promo_end_date'] == null
          ? null
          : DateTime.parse(json['product_promo_end_date'] as String),
    );

Map<String, dynamic> _$$WishListItemDTOImplToJson(
        _$WishListItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wish_list_id': instance.wishListId,
      'product_item_id': instance.productItemId,
      'name': instance.name,
      'product_image': instance.productImage,
      'color': instance.color,
      'size': instance.size,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'category_promo_id': instance.categoryPromoId,
      'category_promo_name': instance.categoryPromoName,
      'category_promo_description': instance.categoryPromoDescription,
      'category_promo_discount_rate': instance.categoryPromoDiscountRate,
      'category_promo_active': instance.categoryPromoActive,
      'category_promo_start_date':
          instance.categoryPromoStartDate?.toIso8601String(),
      'category_promo_end_date':
          instance.categoryPromoEndDate?.toIso8601String(),
      'brand_promo_id': instance.brandPromoId,
      'brand_promo_name': instance.brandPromoName,
      'brand_promo_description': instance.brandPromoDescription,
      'brand_promo_discount_rate': instance.brandPromoDiscountRate,
      'brand_promo_active': instance.brandPromoActive,
      'brand_promo_start_date': instance.brandPromoStartDate?.toIso8601String(),
      'brand_promo_end_date': instance.brandPromoEndDate?.toIso8601String(),
      'product_promo_id': instance.productPromoId,
      'product_promo_name': instance.productPromoName,
      'product_promo_description': instance.productPromoDescription,
      'product_promo_discount_rate': instance.productPromoDiscountRate,
      'product_promo_active': instance.productPromoActive,
      'product_promo_start_date':
          instance.productPromoStartDate?.toIso8601String(),
      'product_promo_end_date': instance.productPromoEndDate?.toIso8601String(),
    };
