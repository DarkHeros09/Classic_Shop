// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_cart_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopCartItemDTOImpl _$$ShopCartItemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopCartItemDTOImpl(
      id: (json['id'] as num?)?.toInt(),
      shoppingCartId: (json['shopping_cart_id'] as num?)?.toInt(),
      productItemId: (json['product_item_id'] as num).toInt(),
      name: json['name'] as String?,
      qty: (json['qty'] as num).toInt(),
      productImage: json['product_image'] as String?,
      color: json['color'] as String?,
      sizeId: (json['size_id'] as num?)?.toInt(),
      sizeValue: json['size_value'] as String?,
      sizeQty: (json['size_qty'] as num?)?.toInt(),
      price: json['price'] as String?,
      active: json['active'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
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

Map<String, dynamic> _$$ShopCartItemDTOImplToJson(
        _$ShopCartItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopping_cart_id': instance.shoppingCartId,
      'product_item_id': instance.productItemId,
      'name': instance.name,
      'qty': instance.qty,
      'product_image': instance.productImage,
      'color': instance.color,
      'size_id': instance.sizeId,
      'size_value': instance.sizeValue,
      'size_qty': instance.sizeQty,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
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
