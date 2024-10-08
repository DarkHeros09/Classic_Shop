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
  }) = _ShopCartItem;
}
