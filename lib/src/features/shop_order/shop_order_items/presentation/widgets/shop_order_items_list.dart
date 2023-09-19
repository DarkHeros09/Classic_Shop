import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/shop_order_items_card.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/shared/providers.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final shopOrderItemsCardIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class ShopOrderItemsList extends ConsumerWidget {
  const ShopOrderItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopOrderItems = ref.watch(
      shopOrderItemsNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (value) => value.shopOrderItems.entity,
        ),
      ),
    );
    return SuperSliverListSeparated(
      itemCount: shopOrderItems?.length ?? 0,
      itemBuilder: (context, index) => ProviderScope(
        key: UniqueKey(),
        overrides: [shopOrderItemsCardIndexProvider.overrideWithValue(index)],
        child: const ShopOrderItemsCard(),
      ),
      separator: (context, index) => const SizedBox(height: 16),
    );
  }
}
