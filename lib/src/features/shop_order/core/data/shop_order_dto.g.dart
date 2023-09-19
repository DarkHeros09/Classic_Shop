// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopOrderDTO _$$_ShopOrderDTOFromJson(Map<String, dynamic> json) =>
    _$_ShopOrderDTO(
      id: json['id'] as int,
      orderNumber: json['order_number'] as int?,
      trackNumber: json['track_number'] as String,
      userId: json['user_id'] as int,
      paymentMethodId: json['payment_method_id'] as int,
      shippingAddressId: json['shipping_address_id'] as int,
      orderTotal: json['order_total'] as String,
      deliveryMethodId: json['shipping_method_id'] as int,
      orderStatusId: json['order_status_id'] as int,
      status: json['status'] as String,
      itemCount: json['item_count'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_ShopOrderDTOToJson(_$_ShopOrderDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'track_number': instance.trackNumber,
      'user_id': instance.userId,
      'payment_method_id': instance.paymentMethodId,
      'shipping_address_id': instance.shippingAddressId,
      'order_total': instance.orderTotal,
      'shipping_method_id': instance.deliveryMethodId,
      'order_status_id': instance.orderStatusId,
      'status': instance.status,
      'item_count': instance.itemCount,
      'created_at': instance.createdAt.toIso8601String(),
    };
