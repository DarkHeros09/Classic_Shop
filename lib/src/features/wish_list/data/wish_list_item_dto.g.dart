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
      price: json['price'] as String?,
      active: json['active'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$WishListItemDTOImplToJson(
        _$WishListItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wish_list_id': instance.wishListId,
      'product_item_id': instance.productItemId,
      'name': instance.name,
      'product_image': instance.productImage,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
