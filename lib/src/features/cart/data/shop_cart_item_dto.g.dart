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
      price: json['price'] as String?,
      active: json['active'] as bool?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
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
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
