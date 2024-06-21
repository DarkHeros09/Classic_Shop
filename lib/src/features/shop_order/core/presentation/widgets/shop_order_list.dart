import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/loading_shop_order_card.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/ship_status_chip_row.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/shop_order_card.dart';
import 'package:classic_shop/src/features/shop_order/core/shared/providers.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final shopOrderCardIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class ShopOrderList extends ConsumerWidget {
  const ShopOrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chipGroupValue =
        ref.watch(chipNotifierProvider.select((value) => value.groupValue));
    final state = ref.watch(shopOrderNotifierProvider);
    final itemCount = ref.watch(
      shopOrderNotifierProvider.select(
        (state) => state.map(
          initial: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity.length,
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()
                .length,
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()
                .length,
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()
                .length,
            _ => _.shopOrders.entity.length,
          },
          loadInProgress: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity.length,
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()
                .length,
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()
                .length,
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()
                .length,
            _ => _.shopOrders.entity.length,
          },
          loadSuccess: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity.length,
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()
                .length,
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()
                .length,
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()
                .length,
            _ => _.shopOrders.entity.length,
          },
          loadFailure: (_) => switch (chipGroupValue) {
            1 => _.shopOrders.entity.length,
            2 => _.shopOrders.entity
                .where((element) => element.status == 'تحت الإجراء')
                .toList()
                .length,
            3 => _.shopOrders.entity
                .where((element) => element.status == 'تم التسليم')
                .toList()
                .length,
            4 => _.shopOrders.entity
                .where((element) => element.status == 'ملغي')
                .toList()
                .length,
            _ => _.shopOrders.entity.length,
          },
        ),
      ),
    );
    debugPrint('ccount: $itemCount');
    return SuperSliverListSeparated(
      itemCount: itemCount,
      itemBuilder: (context, index) => ProviderScope(
        key: UniqueKey(),
        overrides: [shopOrderCardIndexProvider.overrideWithValue(index)],
        child: state.map(
          initial: (_) => const SizedBox.shrink(),
          loadInProgress: (_) => const LoadingShopOrderCard(),
          loadSuccess: (_) => const ShopOrderCard(),
          loadFailure: (_) => const ShopOrderCard(),
        ),
      ),
      separator: (context, index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
