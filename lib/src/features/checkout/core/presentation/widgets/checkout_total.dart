import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/application/delivery_method_notifier.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/domain/delivery_method.dart';
import 'package:classic_shop/src/features/products/core/domain/promotion.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_total.g.dart';

@riverpod
class TotalNotifier extends _$TotalNotifier {
  late final List<ShopCartItem>? cartItems;
  late final DeliveryMethod? deliveryMethod;
  @override
  num build() {
    cartItems = ref.watch(
      cartNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (_) => _.cartItems.entity,
        ),
      ),
    );
    deliveryMethod = ref.watch(
      deliveryMethodNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.deliveryMethods.firstOrNull,
        ),
      ),
    );
    discount();
    final deliveryTotal =
        state == 0 ? 0 : (num.tryParse(deliveryMethod?.price ?? '') ?? 10);

    return state = state + deliveryTotal;
  }

  void discount() {
    state = cartItems?.fold<num>(
          0,
          (previous, cartItem) {
            final discountValue = _discount(cartItem);
            final discountedPrice = (num.parse(cartItem.price!) *
                    cartItem.qty *
                    (1 - (discountValue / 100)))
                .toStringAsFixed(2);
            return previous + num.parse(discountedPrice);
          },
        ) ??
        0;
  }

  int _discount(ShopCartItem cartItem) {
    late final promos = <Promotion>[];
    if (cartItem.productPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItem.productPromoId,
          promoName: cartItem.productPromoName,
          promoDescription: cartItem.productPromoDescription,
          promoDiscountRate: cartItem.productPromoDiscountRate,
          promoActive: cartItem.productPromoActive,
          promoStartDate: cartItem.productPromoStartDate,
          promoEndDate: cartItem.productPromoEndDate,
        ),
      );
    }
    if (cartItem.categoryPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItem.categoryPromoId,
          promoName: cartItem.categoryPromoName,
          promoDescription: cartItem.categoryPromoDescription,
          promoDiscountRate: cartItem.categoryPromoDiscountRate,
          promoActive: cartItem.categoryPromoActive,
          promoStartDate: cartItem.categoryPromoStartDate,
          promoEndDate: cartItem.categoryPromoEndDate,
        ),
      );
    }
    if (cartItem.brandPromoDiscountRate != null) {
      promos.add(
        Promotion(
          promoId: cartItem.brandPromoId,
          promoName: cartItem.brandPromoName,
          promoDescription: cartItem.brandPromoDescription,
          promoDiscountRate: cartItem.brandPromoDiscountRate,
          promoActive: cartItem.brandPromoActive,
          promoStartDate: cartItem.brandPromoStartDate,
          promoEndDate: cartItem.brandPromoEndDate,
        ),
      );
    }

    final validPromo = promos.where(
      (promo) =>
          promo.promoActive != null &&
          promo.promoActive! &&
          DateTime.now().isAfter(promo.promoStartDate!) &&
          DateTime.now().isBefore(promo.promoEndDate!),
    );

    if (validPromo.isEmpty) return 0;
    final bestPromo = validPromo.reduce(
      (currentBest, nextPromo) =>
          nextPromo.promoDiscountRate! > currentBest.promoDiscountRate!
              ? nextPromo
              : currentBest,
    );

    return bestPromo.promoDiscountRate!;
  }
}

class CheckoutTotal extends ConsumerWidget {
  const CheckoutTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final total = ref.watch(totalNotifierProvider);
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
                  '${total.toStringAsFixed(2)} د.ل',
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
