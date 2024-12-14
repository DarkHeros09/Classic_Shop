import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wish_list_item_dto.freezed.dart';
part 'wish_list_item_dto.g.dart';

@freezed
class WishListItemDTO with _$WishListItemDTO {
  const factory WishListItemDTO({
    required int? id,
    required int? wishListId,
    required int productItemId,
    required String? name,
    required String? productImage,
    required String? color,
    required int? sizeId,
    required String? sizeValue,
    required int? sizeQty,
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
  }) = _WishListItemDTO;
  const WishListItemDTO._();

  factory WishListItemDTO.fromJson(Map<String, dynamic> json) =>
      _$WishListItemDTOFromJson(json);

  factory WishListItemDTO.fromDomain(WishListItem _) {
    return WishListItemDTO(
      id: _.id,
      wishListId: _.wishListId,
      productItemId: _.productItemId,
      name: _.name,
      productImage: _.productImage,
      color: _.color,
      sizeId: _.sizeId,
      sizeValue: _.sizeValue,
      sizeQty: _.sizeQty,
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

  WishListItem toDomain() {
    return WishListItem(
      id: id,
      wishListId: wishListId,
      productItemId: productItemId,
      name: name,
      productImage: productImage,
      color: color,
      sizeId: sizeId,
      sizeValue: sizeValue,
      sizeQty: sizeQty,
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
