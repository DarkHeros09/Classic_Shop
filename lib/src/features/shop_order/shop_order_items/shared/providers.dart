import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/application/shop_order_items_notifier.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_api.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_local_service.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_remote_service.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/data/shop_order_items_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final shopOrderItemsLocalServiceProvider = Provider((ref) {
  return ShopOrderItemsLocalService(ref.watch(sembastProvider));
});

final shopOrderItemsApiProvider = Provider(ShopOrderItemsApi.create);

final shopOrderItemsRemoteServiceProvider = Provider((ref) {
  return ShopOrderItemsRemoteService(
    ref.watch(shopOrderItemsApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final shopOrderItemsRepositoryProvider = Provider((ref) {
  return ShopOrderItemsRepository(
    ref.watch(shopOrderItemsLocalServiceProvider),
    ref.watch(shopOrderItemsRemoteServiceProvider),
    ref.watch(userStorageProvider),
  );
});

final shopOrderItemsNotifierProvider =
    NotifierProvider.autoDispose<ShopOrderItemsNotifier, ShopOrderItemsState>(
  ShopOrderItemsNotifier.new,
);
