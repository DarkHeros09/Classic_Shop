import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_cart_item_dto.freezed.dart';
part 'shop_cart_item_dto.g.dart';

@freezed
class ShopCartItemDTO with _$ShopCartItemDTO {
  const factory ShopCartItemDTO({
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
  }) = _ShopCartItemDTO;
  const ShopCartItemDTO._();

  factory ShopCartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ShopCartItemDTOFromJson(json);

  factory ShopCartItemDTO.fromDomain(ShopCartItem _) {
    return ShopCartItemDTO(
      id: _.id,
      shoppingCartId: _.shoppingCartId,
      productItemId: _.productItemId,
      name: _.name,
      qty: _.qty,
      productImage: _.productImage,
      price: _.price,
      active: _.active,
      createdAt: _.createdAt,
      updatedAt: _.updatedAt,
    );
  }

  ShopCartItem toDomain() {
    return ShopCartItem(
      id: id,
      shoppingCartId: shoppingCartId,
      productItemId: productItemId,
      name: name,
      qty: qty,
      productImage: productImage,
      price: price,
      active: active,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
