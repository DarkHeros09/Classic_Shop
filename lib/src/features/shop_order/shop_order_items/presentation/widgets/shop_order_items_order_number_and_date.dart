import 'package:classic_shop/src/features/shop_order/shop_order_items/application/shop_order_items_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ShopOrderItemsOrderNumberAndDate extends ConsumerWidget {
  const ShopOrderItemsOrderNumberAndDate({
    required this.orderNumber,
    super.key,
  });

  final int orderNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final shopOrderItems = ref.watch(
      shopOrderItemsNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (value) => value.shopOrderItems.entity.first,
        ),
      ),
    );
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'رقم الطلب: $orderNumber',
              style: appTheme.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              DateFormat('yyyy-MM-dd')
                  .format(shopOrderItems?.createdAt.toUtc() ?? DateTime(0)),
              style: appTheme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff858080),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
