import 'package:classic_shop/src/features/cart/data/shop_cart_item_dto.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:sembast/sembast.dart';

abstract class ICartLocalService {
  Future<List<ShopCartItemDTO>> fetchCart(int userId);

  // Stream<List<ShopCartItemDTO>> watchCart();

  Future<void> setCart(ShopCartItemDTO shopCartItemDTO, int userId);

  Future<ShopCartItemDTO?> getCartItem(int productItemId, int userId);

  Future<void> updateCartItem(ShopCartItemDTO dto, int userId);

  Future<void> deleteCartItem(int productItemId, int userId);

  Future<void> deleteAllCartItems(int userId);
}

class CartLocalService implements ICartLocalService {
  CartLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  // final _store = intMapStoreFactory.store('cartItems');

  // static const cartItemsKey = 'cartItems';

  @override
  Future<List<ShopCartItemDTO>> fetchCart(int userId) async {
    final store = intMapStoreFactory.store('$userId:userCartItems');
    final records = await store.find(_sembastDatabase.instance);
    return records.map((e) => ShopCartItemDTO.fromJson(e.value)).toList();
  }

  // @override
  // Stream<List<ShopCartItemDTO>> watchCart() {
  //   final record = _store.record(1);
  //   return record.onSnapshot(_sembastDatabase.instance).map((event) {
  //     if (event != null) {
  //       final val = event.value as List<Map<String, dynamic>>;
  //       val.map(ShopCartItemDTO.fromJson).toList();
  //     }
  //     return const <ShopCartItemDTO>[];
  //   });
  // }

  @override
  Future<void> setCart(ShopCartItemDTO dto, int userId) {
    final store = intMapStoreFactory.store('$userId:userCartItems');
    return store.record(dto.productItemId).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  @override
  Future<ShopCartItemDTO?> getCartItem(int productItemId, int userId) async {
    final store = intMapStoreFactory.store('$userId:userCartItems');
    final record =
        await store.record(productItemId).get(_sembastDatabase.instance);

    if (record != null) {
      return ShopCartItemDTO.fromJson(record);
    }
    return null;
  }

  @override
  Future<void> updateCartItem(ShopCartItemDTO dto, int userId) async {
    final store = intMapStoreFactory.store('$userId:userCartItems');
    await store
        .record(dto.productItemId)
        .update(_sembastDatabase.instance, dto.toJson());
  }

  @override
  Future<void> deleteCartItem(int productItemId, int userId) async {
    final store = intMapStoreFactory.store('$userId:userCartItems');
    await store.record(productItemId).delete(_sembastDatabase.instance);
  }

  @override
  Future<void> deleteAllCartItems(int userId) async {
    final store = intMapStoreFactory.store('$userId:userCartItems');
    await store.drop(_sembastDatabase.instance);
  }
}
