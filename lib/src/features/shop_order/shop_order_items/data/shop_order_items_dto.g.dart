// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_order_items_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopOrderItemsDTOImpl _$$ShopOrderItemsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopOrderItemsDTOImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
      trackNumber: json['track_number'] as String,
      deliveryPrice: json['delivery_price'] as String,
      orderTotal: json['order_total'] as String,
      productItemId: (json['product_item_id'] as num).toInt(),
      productName: json['product_name'] as String,
      productImage: json['product_image'] as String,
      productActive: json['product_active'] as bool,
      productColor: json['product_color'] as String,
      productSize: json['product_size'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: json['price'] as String,
      discount: (json['discount'] as num).toInt(),
      paymentType: json['payment_type'] as String,
      orderId: (json['order_id'] as num).toInt(),
      addressLine: json['address_line'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ShopOrderItemsDTOImplToJson(
        _$ShopOrderItemsDTOImpl instance) =>
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
      'product_color': instance.productColor,
      'product_size': instance.productSize,
      'quantity': instance.quantity,
      'price': instance.price,
      'discount': instance.discount,
      'payment_type': instance.paymentType,
      'order_id': instance.orderId,
      'address_line': instance.addressLine,
      'region': instance.region,
      'city': instance.city,
      'created_at': instance.createdAt.toIso8601String(),
    };
