import 'package:freezed_annotation/freezed_annotation.dart';

part 'wish_list_item.freezed.dart';

@freezed
class WishListItem with _$WishListItem {
  const factory WishListItem({
    required int? id,
    required int? wishListId,
    required int productItemId,
    required String? name,
    required String? productImage,
    required String? color,
    required int? sizeId,
    required String? size,
    required String? price,
    required bool? active,
    required DateTime? createdAt,
    required DateTime? updatedAt,
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
  }) = _WishListItem;
}
