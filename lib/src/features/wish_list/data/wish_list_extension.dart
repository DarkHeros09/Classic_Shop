import 'package:classic_shop/src/features/wish_list/data/wish_list_item_dto.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';

extension DTOListToDomainList on List<WishListItemDTO> {
  List<WishListItem> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

// extension DTOListToIsarList on List<WishListItemDTO> {
//   List<WishListIsar> toIsar() {
//     return map((e) => e.toIsar()).toList();
//   }
// }
