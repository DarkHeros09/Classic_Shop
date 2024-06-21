import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_order.freezed.dart';

@freezed
class ShopOrder with _$ShopOrder {
  const factory ShopOrder({
    required final int id,
    required final int? orderNumber,
    required final String trackNumber,
    required final int userId,
    // required final int paymentMethodId,
    required final int shippingAddressId,
    required final String orderTotal,
    required final int deliveryMethodId,
    required final int orderStatusId,
    required final String status,
    required final int itemCount,
    required final DateTime createdAt,
  }) = _ShopOrder;
  const ShopOrder._();
}
