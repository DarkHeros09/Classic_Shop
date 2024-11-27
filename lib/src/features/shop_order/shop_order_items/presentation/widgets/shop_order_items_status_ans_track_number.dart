import 'package:classic_shop/src/features/shop_order/shop_order_items/application/shop_order_items_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopOrderItemsStatusAndTrackNumber extends ConsumerWidget {
  const ShopOrderItemsStatusAndTrackNumber({
    super.key,
  });

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
            Row(
              children: [
                Text(
                  'رقم التتبع:',
                  style: appTheme.textTheme.bodySmall?.copyWith(
                    color: const Color(0xff858080),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '${shopOrderItems?.trackNumber}',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'الحالة:',
                  style: appTheme.textTheme.bodySmall!.copyWith(
                    color: const Color(0xff858080),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  shopOrderItems?.status ?? '',
                  style: appTheme.textTheme.bodySmall?.copyWith(
                    color: switch (shopOrderItems?.status) {
                      'تم التسليم' => const Color(0xFF2AA952),
                      'تحت الإجراء' => const Color(0xFFFFA004),
                      'ملغي' => const Color(0xFFDB3022),
                      _ => Colors.black,
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
