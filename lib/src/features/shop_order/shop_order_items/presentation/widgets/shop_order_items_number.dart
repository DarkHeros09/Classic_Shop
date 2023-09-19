import 'package:classic_shop/src/features/shop_order/shop_order_items/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopOrderItemsNumber extends ConsumerWidget {
  const ShopOrderItemsNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopOrderItemsNumber = ref.watch(
      shopOrderItemsNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (value) => value.shopOrderItems.entity.length,
        ),
      ),
    );
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text('عناصر: $shopOrderItemsNumber'),
      ),
    );
  }
}
