import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_payment_options.dart';
import 'package:classic_shop/src/features/checkout/core/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/order_status/shared/providers.dart';
import 'package:classic_shop/src/features/notification/shared/providers.dart';
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

    final cartItemsPrice = ref.watch(
      cartNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.cartItems.entity,
        ),
      ),
    );

    final deliveryMethod = ref.watch(
      deliveryMethodNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.deliveryMethods.firstOrNull,
        ),
      ),
    );
    final sum = cartItemsPrice?.fold<num>(
          0,
          (previous, value) => previous + (num.parse(value.price!) * value.qty),
        ) ??
        0 + (num.tryParse(deliveryMethod?.price ?? '') ?? 10);
    final deliveryTotal =
        sum == 0 ? 0 : (num.tryParse(deliveryMethod?.price ?? '') ?? 10);

    final orderStatusId = ref.watch(
      orderStatusNotifierProvider.select(
        (state) => state.mapOrNull(
          loadSuccess: (_) => _.orderStatus.id,
        ),
      ),
    );

    active.value = address?.id != null &&
        deliveryMethod?.id != null &&
        orderStatusId != null;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ElevatedButton(
          onPressed: () async {
            await ref.read(checkoutNotifierProvider.notifier).checkout(
                  context: context,
                  userAddressId: address?.id ?? 0,
                  paymentTypeId: int.tryParse(
                        ref.read(selectedPaymentTypeNotifierProvider).value,
                      ) ??
                      0,
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
          },
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
