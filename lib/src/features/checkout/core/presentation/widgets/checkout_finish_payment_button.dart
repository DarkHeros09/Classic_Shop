import 'package:classic_shop/src/features/address/application/address_notifier.dart';
import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/checkout/core/application/checkout_notifier.dart';
import 'package:classic_shop/src/features/checkout/core/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/application/delivery_method_notifier.dart';
import 'package:classic_shop/src/features/checkout/order_status/application/order_status_notifier.dart';
import 'package:classic_shop/src/features/notification/application/notification_notifier.dart';
import 'package:classic_shop/src/features/products/core/domain/promotion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckoutFinishPaymentButton extends StatelessWidget {
  const CheckoutFinishPaymentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _BuyButton(),
          // SizedBox(
          //   height: 58,
          // )
        ],
      ),
    );
  }
}

class _BuyButton extends HookConsumerWidget {
  const _BuyButton();

  int discount(ShopCartItem cartItem) {
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final active = useValueNotifier(false);
    final address = ref.watch(
      addressNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (value) => value.addresses.entity
              .where((element) => element.id == element.defaultAddress)
              .singleOrNull,
        ),
      ),
    );

    final cartItems = ref.watch(
      cartNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (_) => _.cartItems.entity,
        ),
      ),
    );
    final sum = cartItems?.fold<num>(
          0,
          (previous, cartItem) {
            final discountValue = discount(cartItem);
            final discountedPrice = (num.parse(cartItem.price!) *
                    cartItem.qty *
                    (1 - (discountValue / 100)))
                .toStringAsFixed(2);
            return previous + num.parse(discountedPrice);
          },
        ) ??
        0;
    final deliveryMethod = ref.watch(
      deliveryMethodNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.deliveryMethods.firstOrNull,
        ),
      ),
    );
    // final deliveryTotal =
    //     sum == 0 ? 0 : (num.tryParse(deliveryMethod?.price ?? '') ?? 10);
    final deliveryTotal = num.parse(deliveryMethod?.price ?? '');

    final orderStatusId = ref.watch(
      orderStatusNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.orderStatus.id,
        ),
      ),
    );
    final selectedPaymentType = ref.watch(selectedPaymentTypeNotifierProvider);
    debugPrint('zzxx gg ${selectedPaymentType.value}');
    active.value = address?.id != null &&
        deliveryMethod?.id != null &&
        orderStatusId != null &&
        selectedPaymentType.value != null;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ElevatedButton(
          onPressed: active.value
              ? () async {
                  await ref.read(checkoutNotifierProvider.notifier).checkout(
                        context: context,
                        userAddressId: address?.id ?? 0,
                        paymentTypeId: int.parse(
                          ref.read(selectedPaymentTypeNotifierProvider).value ??
                              '',
                        ),
                        shippingMethodId: deliveryMethod?.id ?? 0,
                        orderStatusId: orderStatusId ?? 0,
                        orderTotal: sum + deliveryTotal,
                      );
                  await ref
                      .read(notificationNotifierProvider.notifier)
                      .createNotification();

                  // if (context.mounted) {
                  //   context.goNamed(AppRoute.checkoutSuccess.name);
                  // }
                }
              : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff9D331F),
            disabledBackgroundColor: Colors.grey,
            fixedSize: const Size(double.maxFinite, 64),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          child: Text(
            'إتمام عملية الشراء',
            style: appTheme.textTheme.bodySmall?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
