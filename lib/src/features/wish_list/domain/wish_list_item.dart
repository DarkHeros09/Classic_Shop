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
    required String? price,
    required bool? active,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _WishListItem;
}
