import 'package:classic_shop/src/features/shop_order/core/domain/shop_order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_order_dto.freezed.dart';
part 'shop_order_dto.g.dart';

@freezed
class ShopOrderDTO with _$ShopOrderDTO {
  const factory ShopOrderDTO({
    required final int id,
    required final int? orderNumber,
    required final String trackNumber,
    required final int userId,
    // required final int paymentMethodId,
    required final int shippingAddressId,
    required final String orderTotal,
    @JsonKey(name: 'shipping_method_id') required final int deliveryMethodId,
    required final int orderStatusId,
    required final String status,
    required final int itemCount,
    required final DateTime createdAt,
  }) = _ShopOrderDTO;
  const ShopOrderDTO._();

  factory ShopOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$ShopOrderDTOFromJson(json);

  factory ShopOrderDTO.fromDomain(ShopOrder _) {
    return ShopOrderDTO(
      id: _.id,
      orderNumber: _.orderNumber,
      trackNumber: _.trackNumber,
      userId: _.userId,
      // paymentMethodId: _.paymentMethodId,
      shippingAddressId: _.shippingAddressId,
      orderTotal: _.orderTotal,
      deliveryMethodId: _.deliveryMethodId,
      orderStatusId: _.orderStatusId,
      status: _.status,
      itemCount: _.itemCount,
      createdAt: _.createdAt,
    );
  }

  ShopOrder toDomain() {
    return ShopOrder(
      id: id,
      orderNumber: orderNumber,
      trackNumber: trackNumber,
      userId: userId,
      // paymentMethodId: paymentMethodId,
      shippingAddressId: shippingAddressId,
      orderTotal: orderTotal,
      deliveryMethodId: deliveryMethodId,
      orderStatusId: orderStatusId,
      status: status,
      itemCount: itemCount,
      createdAt: createdAt,
    );
  }
}
