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
    required String? color,
    required String? size,
    required String? price,
    required bool? active,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int? categoryPromoId,
    required String? categoryPromoName,
    required String? categoryPromoDescription,
    required int? categoryPromoDiscountRate,
    required bool? categoryPromoActive,
    required DateTime? categoryPromoStartDate,
    required DateTime? categoryPromoEndDate,
    required int? brandPromoId,
    required String? brandPromoName,
    required String? brandPromoDescription,
    required int? brandPromoDiscountRate,
    required bool? brandPromoActive,
    required DateTime? brandPromoStartDate,
    required DateTime? brandPromoEndDate,
    required int? productPromoId,
    required String? productPromoName,
    required String? productPromoDescription,
    required int? productPromoDiscountRate,
    required bool? productPromoActive,
    required DateTime? productPromoStartDate,
    required DateTime? productPromoEndDate,
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
      color: _.color,
      size: _.size,
      price: _.price,
      active: _.active,
      createdAt: _.createdAt,
      updatedAt: _.updatedAt,
      categoryPromoId: _.categoryPromoId,
      categoryPromoName: _.categoryPromoName,
      categoryPromoDescription: _.categoryPromoDescription,
      categoryPromoDiscountRate: _.categoryPromoDiscountRate,
      categoryPromoActive: _.categoryPromoActive,
      categoryPromoStartDate: _.categoryPromoStartDate,
      categoryPromoEndDate: _.categoryPromoEndDate,
      brandPromoId: _.brandPromoId,
      brandPromoName: _.brandPromoName,
      brandPromoDescription: _.brandPromoDescription,
      brandPromoDiscountRate: _.brandPromoDiscountRate,
      brandPromoActive: _.brandPromoActive,
      brandPromoStartDate: _.brandPromoStartDate,
      brandPromoEndDate: _.brandPromoEndDate,
      productPromoId: _.productPromoId,
      productPromoName: _.productPromoName,
      productPromoDescription: _.productPromoDescription,
      productPromoDiscountRate: _.productPromoDiscountRate,
      productPromoActive: _.productPromoActive,
      productPromoStartDate: _.productPromoStartDate,
      productPromoEndDate: _.productPromoEndDate,
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
      color: color,
      size: size,
      price: price,
      active: active,
      createdAt: createdAt,
      updatedAt: updatedAt,
      categoryPromoId: categoryPromoId,
      categoryPromoName: categoryPromoName,
      categoryPromoDescription: categoryPromoDescription,
      categoryPromoDiscountRate: categoryPromoDiscountRate,
      categoryPromoActive: categoryPromoActive,
      categoryPromoStartDate: categoryPromoStartDate,
      categoryPromoEndDate: categoryPromoEndDate,
      brandPromoId: brandPromoId,
      brandPromoName: brandPromoName,
      brandPromoDescription: brandPromoDescription,
      brandPromoDiscountRate: brandPromoDiscountRate,
      brandPromoActive: brandPromoActive,
      brandPromoStartDate: brandPromoStartDate,
      brandPromoEndDate: brandPromoEndDate,
      productPromoId: productPromoId,
      productPromoName: productPromoName,
      productPromoDescription: productPromoDescription,
      productPromoDiscountRate: productPromoDiscountRate,
      productPromoActive: productPromoActive,
      productPromoStartDate: productPromoStartDate,
      productPromoEndDate: productPromoEndDate,
    );
  }
}