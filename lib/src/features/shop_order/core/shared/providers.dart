import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/shop_order/core/application/shop_order_notifier.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_api.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_local_service.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_remote_service.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final shopOrderLocalServiceProvider = Provider((ref) {
  return ShopOrderLocalService(ref.watch(sembastProvider));
});

final shopOrderApiProvider = Provider(ShopOrderApi.create);

final shopOrderRemoteServiceProvider = Provider((ref) {
  return ShopOrderRemoteService(
    ref.watch(shopOrderApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final shopOrderRepositoryProvider = Provider((ref) {
  return ShopOrderRepository(
    ref.watch(shopOrderRemoteServiceProvider),
    ref.watch(shopOrderLocalServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final shopOrderNotifierProvider =
    NotifierProvider.autoDispose<ShopOrdersNotifier, ShopOrdersState>(
  ShopOrdersNotifier.new,
);

final shopOrderProcessingNotifierProvider =
    NotifierProvider.autoDispose<ShopOrdersProcessingNotifier, ShopOrdersState>(
  ShopOrdersProcessingNotifier.new,
);
final shopOrderDeliveredNotifierProvider =
    NotifierProvider.autoDispose<ShopOrdersDeliveredNotifier, ShopOrdersState>(
  ShopOrdersDeliveredNotifier.new,
);
final shopOrderCancelledNotifierProvider =
    NotifierProvider.autoDispose<ShopOrdersCancelledNotifier, ShopOrdersState>(
  ShopOrdersCancelledNotifier.new,
);
