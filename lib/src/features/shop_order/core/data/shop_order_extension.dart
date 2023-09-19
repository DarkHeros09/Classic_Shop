import 'package:classic_shop/src/features/shop_order/core/data/shop_order_dto.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order.dart';

extension DTOListToDomainList on List<ShopOrderDTO> {
  List<ShopOrder> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
