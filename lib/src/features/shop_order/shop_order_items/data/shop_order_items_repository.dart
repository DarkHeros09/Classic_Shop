import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_extension.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_local_service.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_remote_service.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/domain/shop_order_items.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/domain/shop_order_items_failure.dart';
import 'package:dartz/dartz.dart';

class ShopOrderItemsRepository {
  ShopOrderItemsRepository(
    this._localService,
    this._remoteService,
    this._userStorage,
  );

  final ShopOrderItemsLocalService _localService;
  final ShopOrderItemsRemoteService _remoteService;
  final UserStorage _userStorage;

  Future<Either<ShopOrderItemsFailure, Fresh<List<ShopOrderItems>>>>
      fetchShopOrderItems({
    required int orderId,
  }) async {
    try {
      final user = await _userStorage.read();

      if (user != null) {
        final shopOrderItems = await _remoteService.fetchShopOrderItems(
          userId: user.id,
          orderId: orderId,
        );

        return right(
          await shopOrderItems.when(
            noConnection: () async => Fresh.no(
              await _localService
                  .fetchShopOrderItems(orderId)
                  .then((_) => _.toDomain()),
            ),
            notModified: (_) async => Fresh.yes(
              await _localService
                  .fetchShopOrderItems(orderId)
                  .then((_) => _.toDomain()),
            ),
            noContent: () async {
              await _localService.deleteAllShopOrderItems();
              return Fresh.no([], isNextPageAvailable: false);
            },
            withNewData: (data, _) async {
              await _localService.setShopOrderItems(data);
              return Fresh.yes(data.toDomain());
            },
          ),
        );
      }

      final shopOrderItems = await _localService.fetchShopOrderItems(orderId);
      return right(
        Fresh.no(shopOrderItems.toDomain()),
      );
    } on RestApiException catch (e) {
      return left(ShopOrderItemsFailure.api(e.errorCode));
    } on Exception catch (_) {
      rethrow;
    }
  }
}
