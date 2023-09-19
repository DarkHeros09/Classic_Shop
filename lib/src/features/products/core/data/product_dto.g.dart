// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      productId: json['product_id'] as int,
      categoryId: json['category_id'] as int,
      brandId: json['brand_id'] as int,
      brandName: json['brand_name'] as String,
      productSku: json['product_sku'] as int,
      qtyInStock: json['qty_in_stock'] as int,
      productImage_1: json['product_image_1'] as String,
      productImage_2: json['product_image_2'] as String,
      productImage_3: json['product_image_3'] as String,
      sizeValue: json['size_value'] as String,
      colorValue: json['color_value'] as String,
      price: json['price'] as String,
      parentProductActive: json['parent_product_active'] as bool,
      active: json['active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      categoryPromoId: json['category_promo_id'] as int?,
      categoryPromoName: json['category_promo_name'] as String?,
      categoryPromoDescription: json['category_promo_description'] as String?,
      categoryPromoDiscountRate: json['category_promo_discount_rate'] as int?,
      categoryPromoActive: json['category_promo_active'] as bool,
      categoryPromoStartDate: json['category_promo_start_date'] == null
          ? null
          : DateTime.parse(json['category_promo_start_date'] as String),
      categoryPromoEndDate: json['category_promo_end_date'] == null
          ? null
          : DateTime.parse(json['category_promo_end_date'] as String),
      brandPromoId: json['brand_promo_id'] as int?,
      brandPromoName: json['brand_promo_name'] as String?,
      brandPromoDescription: json['brand_promo_description'] as String?,
      brandPromoDiscountRate: json['brand_promo_discount_rate'] as int?,
      brandPromoActive: json['brand_promo_active'] as bool,
      brandPromoStartDate: json['brand_promo_start_date'] == null
          ? null
          : DateTime.parse(json['brand_promo_start_date'] as String),
      brandPromoEndDate: json['brand_promo_end_date'] == null
          ? null
          : DateTime.parse(json['brand_promo_end_date'] as String),
      productPromoId: json['product_promo_id'] as int?,
      productPromoName: json['product_promo_name'] as String?,
      productPromoDescription: json['product_promo_description'] as String?,
      productPromoDiscountRate: json['product_promo_discount_rate'] as int?,
      productPromoActive: json['product_promo_active'] as bool,
      productPromoStartDate: json['product_promo_start_date'] == null
          ? null
          : DateTime.parse(json['product_promo_start_date'] as String),
      productPromoEndDate: json['product_promo_end_date'] == null
          ? null
          : DateTime.parse(json['product_promo_end_date'] as String),
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_id': instance.productId,
      'category_id': instance.categoryId,
      'brand_id': instance.brandId,
      'brand_name': instance.brandName,
      'product_sku': instance.productSku,
      'qty_in_stock': instance.qtyInStock,
      'product_image_1': instance.productImage_1,
      'product_image_2': instance.productImage_2,
      'product_image_3': instance.productImage_3,
      'size_value': instance.sizeValue,
      'color_value': instance.colorValue,
      'price': instance.price,
      'parent_product_active': instance.parentProductActive,
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
