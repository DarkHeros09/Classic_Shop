import 'package:classic_shop/src/features/cart/data/shop_cart_item_dto.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';

extension DTOListToDomainList on List<ShopCartItemDTO> {
  List<ShopCartItem> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
