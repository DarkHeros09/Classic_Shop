import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_order_items.freezed.dart';

@freezed
class ShopOrderItems with _$ShopOrderItems {
  const factory ShopOrderItems({
    required final int id,
    required final String status,
    required final int orderNumber,
    required final String trackNumber,
    required final String deliveryPrice,
    required final String orderTotal,
    required final int productItemId,
    required final String productName,
    required final String productImage,
    required final bool productActive,
    required final String productColor,
    required final String productSize,
    required final int quantity,
    required final String price,
    required final int discount,
    required final String paymentType,
    required final int orderId,
    required final String addressLine,
    required final String region,
    required final String city,
    required final DateTime createdAt,
  }) = _ShopOrderItems;
  const ShopOrderItems._();
}
