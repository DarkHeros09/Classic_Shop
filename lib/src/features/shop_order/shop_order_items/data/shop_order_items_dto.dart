import 'package:classic_shop/src/features/shop_order/shop_order_items/domain/shop_order_items.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_order_items_dto.freezed.dart';
part 'shop_order_items_dto.g.dart';

@freezed
class ShopOrderItemsDTO with _$ShopOrderItemsDTO {
  const factory ShopOrderItemsDTO({
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
    required final int quantity,
    required final String price,
    required final String paymentType,
    required final int orderId,
    required final String addressLine,
    required final String region,
    required final String city,
    required final DateTime createdAt,
  }) = _ShopOrderItemsDTO;
  const ShopOrderItemsDTO._();

  factory ShopOrderItemsDTO.fromJson(Map<String, dynamic> json) =>
      _$ShopOrderItemsDTOFromJson(json);

  factory ShopOrderItemsDTO.fromDomain(ShopOrderItems _) {
    return ShopOrderItemsDTO(
      id: _.id,
      status: _.status,
      orderNumber: _.orderNumber,
      trackNumber: _.trackNumber,
      deliveryPrice: _.deliveryPrice,
      orderTotal: _.orderTotal,
      productItemId: _.productItemId,
      productName: _.productName,
      productImage: _.productImage,
      productActive: _.productActive,
      quantity: _.quantity,
      price: _.price,
      paymentType: _.paymentType,
      orderId: _.orderId,
      addressLine: _.addressLine,
      region: _.region,
      city: _.city,
      createdAt: _.createdAt,
    );
  }

  ShopOrderItems toDomain() {
    return ShopOrderItems(
      id: id,
      status: status,
      orderNumber: orderNumber,
      trackNumber: trackNumber,
      deliveryPrice: deliveryPrice,
      orderTotal: orderTotal,
      productItemId: productItemId,
      productName: productName,
      productImage: productImage,
      productActive: productActive,
      quantity: quantity,
      price: price,
      paymentType: paymentType,
      orderId: orderId,
      addressLine: addressLine,
      region: region,
      city: city,
      createdAt: createdAt,
    );
  }
}
