// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_order_items_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopOrderItemsDTO _$$_ShopOrderItemsDTOFromJson(Map<String, dynamic> json) =>
    _$_ShopOrderItemsDTO(
      id: json['id'] as int,
      status: json['status'] as String,
      orderNumber: json['order_number'] as int,
      trackNumber: json['track_number'] as String,
      deliveryPrice: json['delivery_price'] as String,
      orderTotal: json['order_total'] as String,
      productItemId: json['product_item_id'] as int,
      productName: json['product_name'] as String,
      productImage: json['product_image'] as String,
      productActive: json['product_active'] as bool,
      quantity: json['quantity'] as int,
      price: json['price'] as String,
      paymentType: json['payment_type'] as String,
      orderId: json['order_id'] as int,
      addressLine: json['address_line'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_ShopOrderItemsDTOToJson(
        _$_ShopOrderItemsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'order_number': instance.orderNumber,
      'track_number': instance.trackNumber,
      'delivery_price': instance.deliveryPrice,
      'order_total': instance.orderTotal,
      'product_item_id': instance.productItemId,
      'product_name': instance.productName,
      'product_image': instance.productImage,
      'product_active': instance.productActive,
      'quantity': instance.quantity,
      'price': instance.price,
      'payment_type': instance.paymentType,
      'order_id': instance.orderId,
      'address_line': instance.addressLine,
      'region': instance.region,
      'city': instance.city,
      'created_at': instance.createdAt.toIso8601String(),
    };
