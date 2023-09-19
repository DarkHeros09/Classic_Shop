import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_item_dto.dart';
import 'package:sembast/sembast.dart';

abstract class IWishListLocalService {
  Future<List<WishListItemDTO>> fetchWishList();

  Future<void> setWishList(WishListItemDTO shopWishListItemDTO);

  Future<WishListItemDTO?> getWishListItem(int productItemId);

  Future<void> updateWishListItem(WishListItemDTO dto);

  Future<void> deleteWishListItem(int productItemId);

  Future<void> deleteAllWishListItems();
}

class WishListLocalService implements IWishListLocalService {
  WishListLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('wishListItems');

  // static const wishListsKey = 'wishLists';

  @override
  Future<List<WishListItemDTO>> fetchWishList() async {
    final records = await _store.find(_sembastDatabase.instance);
    return records.map((e) => WishListItemDTO.fromJson(e.value)).toList();
  }

  @override
  Future<void> setWishList(WishListItemDTO dto) {
    return _store.record(dto.productItemId).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  @override
  Future<WishListItemDTO?> getWishListItem(int productItemId) async {
    final record =
        await _store.record(productItemId).get(_sembastDatabase.instance);

    if (record != null) {
      return WishListItemDTO.fromJson(record);
    }
    return null;
  }

  @override
  Future<void> updateWishListItem(WishListItemDTO dto) async {
    await _store
        .record(dto.productItemId)
        .update(_sembastDatabase.instance, dto.toJson());
  }

  @override
  Future<void> deleteWishListItem(int productItemId) async {
    await _store.record(productItemId).delete(_sembastDatabase.instance);
  }

  @override
  Future<void> deleteAllWishListItems() async {
    await _store.drop(_sembastDatabase.instance);
  }
}
