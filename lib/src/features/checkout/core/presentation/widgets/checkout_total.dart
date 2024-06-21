import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckoutTotal extends ConsumerWidget {
  const CheckoutTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final cartItemsPrice = ref.watch(
      cartNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (_) => _.cartItems.entity,
        ),
      ),
    );
    final sum = cartItemsPrice?.fold<num>(
          0,
          (previous, value) => previous + (num.parse(value.price!) * value.qty),
        ) ??
        0 + 10;
    final deliveryMethod = ref.watch(
      deliveryMethodNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.deliveryMethods.firstOrNull,
        ),
      ),
    );
    final deliveryTotal =
        sum == 0 ? 0 : (num.tryParse(deliveryMethod?.price ?? '') ?? 10);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'الإجمالي الكلي:',
              style: appTheme.textTheme.titleMedium!
                  .copyWith(color: const Color(0xff7D7979)),
            ),
            Row(
              children: [
                Text(
                  '${(sum + deliveryTotal).toStringAsFixed(2)} د.ل',
                  style: appTheme.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                const Icon(Icons.price_check)
              ],
            )
          ],
        ),
      ),
    );
  }
}
