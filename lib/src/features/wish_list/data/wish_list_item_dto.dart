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
    required String? price,
    required bool? active,
    required DateTime? createdAt,
    required DateTime? updatedAt,
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
      price: _.price,
      active: _.active,
      createdAt: _.createdAt,
      updatedAt: _.updatedAt,
    );
  }

  // factory WishListItemDTO.fromIsar(WishListIsar _) {
  //   return WishListItemDTO(
  //     id: _.id,
  //     wishListId: _.wishListId,
  //     productItemId: _.productItemId,
  //     name: _.name,
  //     productImage: _.productImage,
  //     price: _.price,
  //     active: _.active,
  //     createdAt: _.createdAt,
  //     updatedAt: _.updatedAt,
  //   );
  // }

  WishListItem toDomain() {
    return WishListItem(
      id: id,
      wishListId: wishListId,
      productItemId: productItemId,
      name: name,
      productImage: productImage,
      price: price,
      active: active,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  // WishListIsar toIsar() {
  //   return WishListIsar(
  //     id: id,
  //     wishListId: wishListId,
  //     productItemId: productItemId,
  //     name: name,
  //     productImage: productImage,
  //     price: price,
  //     active: active,
  //     createdAt: createdAt,
  //     updatedAt: updatedAt,
  //   );
  // }
}
