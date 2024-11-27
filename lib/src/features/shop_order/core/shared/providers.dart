import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_api.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_local_service.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_remote_service.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
ShopOrderLocalService shopOrderLocalService(Ref ref) {
  return ShopOrderLocalService(ref.watch(sembastProvider));
}

@Riverpod(keepAlive: true)
ShopOrderApi shopOrderApi(Ref ref) {
  return ShopOrderApi.create(ref);
}

@Riverpod(keepAlive: true)
ShopOrderRemoteService shopOrderRemoteService(Ref ref) {
  return ShopOrderRemoteService(
    ref.watch(shopOrderApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
ShopOrderRepository shopOrderRepository(Ref ref) {
  return ShopOrderRepository(
    ref.watch(shopOrderRemoteServiceProvider),
    ref.watch(shopOrderLocalServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

////////////////* Presentation //////////////////////////

class ChipGroupValue {
  const ChipGroupValue(this.groupValue);
  final int groupValue;
}

@riverpod
class ChipNotifier extends _$ChipNotifier {
  @override
  ChipGroupValue build() {
    return const ChipGroupValue(1);
  }

  void groupValue(int value) {
    state = ChipGroupValue(value);
  }
}
