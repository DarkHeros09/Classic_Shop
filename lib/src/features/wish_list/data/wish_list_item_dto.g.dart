// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WishListItemDTO _$$_WishListItemDTOFromJson(Map<String, dynamic> json) =>
    _$_WishListItemDTO(
      id: json['id'] as int?,
      wishListId: json['wish_list_id'] as int?,
      productItemId: json['product_item_id'] as int,
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

Map<String, dynamic> _$$_WishListItemDTOToJson(_$_WishListItemDTO instance) =>
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
