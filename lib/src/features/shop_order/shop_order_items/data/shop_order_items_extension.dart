import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_dto.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/domain/shop_order_items.dart';

extension DTOListToDomainList on List<ShopOrderItemsDTO> {
  List<ShopOrderItems> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
