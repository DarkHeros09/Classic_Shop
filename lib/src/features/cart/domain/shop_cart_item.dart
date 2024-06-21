import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_cart_item.freezed.dart';

@freezed
class ShopCartItem with _$ShopCartItem {
  const factory ShopCartItem({
    required int? id,
    required int? shoppingCartId,
    required int productItemId,
    required String? name,
    required int qty,
    required String? productImage,
    required String? price,
    required bool? active,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ShopCartItem;
}
