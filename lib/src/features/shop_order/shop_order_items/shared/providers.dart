import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_api.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_local_service.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_remote_service.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
ShopOrderItemsLocalService shopOrderItemsLocalService(Ref ref) {
  return ShopOrderItemsLocalService(ref.watch(sembastDatabaseProvider));
}

@Riverpod(keepAlive: true)
ShopOrderItemsApi shopOrderItemsApi(Ref ref) {
  return ShopOrderItemsApi.create(ref);
}

@Riverpod(keepAlive: true)
ShopOrderItemsRemoteService shopOrderItemsRemoteService(Ref ref) {
  return ShopOrderItemsRemoteService(
    ref.watch(shopOrderItemsApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
ShopOrderItemsRepository shopOrderItemsRepository(Ref ref) {
  return ShopOrderItemsRepository(
    ref.watch(shopOrderItemsLocalServiceProvider),
    ref.watch(shopOrderItemsRemoteServiceProvider),
    ref.watch(userStorageProvider),
  );
}
