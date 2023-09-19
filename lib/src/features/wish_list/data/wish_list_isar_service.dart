// import 'package:classic_shop/src/features/wish_list/data/isar_database.dart';
// import 'package:classic_shop/src/features/wish_list/data/wish_list_isar.dart';
// import 'package:classic_shop/src/features/wish_list/data/wish_list_item_dto.dart';
// import 'package:classic_shop/src/features/wish_list/data/wish_list_local_service.dart';
// import 'package:flutter/foundation.dart';
// import 'package:isar/isar.dart';

// class WishListIsarService implements IWishListLocalService {
//   WishListIsarService(this._isar);

//   final IsarDatabase _isar;

//   @override
//   Future<void> deleteAllWishListItems() {
//     // TODO: implement deleteAllWishListItems
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> deleteWishListItem(int productItemId) {
//     debugPrint('LOCALW: DELETE CALLED');
//     return _isar.instance.writeTxn(
//       () => _isar.instance.wishListIsars
//           .filter()
//           .productItemIdEqualTo(productItemId)
//           .deleteAll(),
//     );
//   }

//   @override
//   Future<List<WishListItemDTO>> fetchWishList() async {
//     final isarList = await _isar.instance.wishListIsars.where().findAll();
//     return isarList.map(WishListItemDTO.fromIsar).toList();
//   }

//   @override
//   Future<WishListItemDTO?> getWishListItem(int productItemId) {
//     // TODO: implement getWishListItem
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> setWishList(WishListItemDTO wishListItemDTO) async {
//     debugPrint('LOCALW: set called');
//     final s = await _isar.instance.writeTxn(
//       () => _isar.instance.wishListIsars.put(wishListItemDTO.toIsar()),
//     );
//     debugPrint('LOCALW: Saved DATA $s');
//     return;
//   }

//   @override
//   Future<void> updateWishListItem(WishListItemDTO dto) {
//     // TODO: implement updateWishListItem
//     throw UnimplementedError();
//   }
// }
