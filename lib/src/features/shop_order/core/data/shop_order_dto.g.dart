// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopOrderDTOImpl _$$ShopOrderDTOImplFromJson(Map<String, dynamic> json) =>
    _$ShopOrderDTOImpl(
      id: (json['id'] as num).toInt(),
      orderNumber: (json['order_number'] as num?)?.toInt(),
      trackNumber: json['track_number'] as String,
      userId: (json['user_id'] as num).toInt(),
      shippingAddressId: (json['shipping_address_id'] as num).toInt(),
      orderTotal: json['order_total'] as String,
      deliveryMethodId: (json['shipping_method_id'] as num).toInt(),
      orderStatusId: (json['order_status_id'] as num).toInt(),
      status: json['status'] as String,
      itemCount: (json['item_count'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ShopOrderDTOImplToJson(_$ShopOrderDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'track_number': instance.trackNumber,
      'user_id': instance.userId,
      'shipping_address_id': instance.shippingAddressId,
      'order_total': instance.orderTotal,
      'shipping_method_id': instance.deliveryMethodId,
      'order_status_id': instance.orderStatusId,
      'status': instance.status,
      'item_count': instance.itemCount,
      'created_at': instance.createdAt.toIso8601String(),
    };
