import 'package:classic_shop/src/features/checkout/delivery_method/application/delivery_method_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckoutDeliveryTotal extends ConsumerWidget {
  const CheckoutDeliveryTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final deliveryMethod = ref.watch(
      deliveryMethodNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.deliveryMethods.firstOrNull,
        ),
      ),
    );
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'التوصيل:',
              style: appTheme.textTheme.titleMedium!
                  .copyWith(color: const Color(0xff7D7979)),
            ),
            Row(
              children: [
                Text(
                  '${deliveryMethod?.price} د.ل',
                  style: appTheme.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                const Icon(Icons.price_check),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
