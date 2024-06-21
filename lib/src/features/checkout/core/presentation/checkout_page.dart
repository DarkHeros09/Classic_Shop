import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_page_content.dart';
import 'package:classic_shop/src/features/checkout/core/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/order_status/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/payment_types/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  const CheckoutPage({super.key});

  @override
  ConsumerState<CheckoutPage> createState() => _CheckoutState();
}

class _CheckoutState extends ConsumerState<CheckoutPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await ref.read(checkoutInitNotifierProvider.notifier).intiCheckout();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final paymentState = ref.watch(paymentTypeNotifierProvider);
    final addresstState = ref.watch(addressNotifierProvider);
    final deliveryMethodState = ref.watch(deliveryMethodNotifierProvider);
    final orderStatusState = ref.watch(orderStatusNotifierProvider);
    final isLoading = paymentState.maybeMap(
          orElse: () => false,
          loadInProgress: (value) => true,
        ) ||
        addresstState.maybeMap(
          orElse: () => false,
          loadInProgress: (value) => true,
        ) ||
        deliveryMethodState.maybeMap(
          orElse: () => false,
          loadInProgress: (value) => true,
        ) ||
        orderStatusState.maybeMap(
          orElse: () => false,
          loadInProgress: (value) => true,
        );
    final checkoutInitState = ref.watch(checkoutInitNotifierProvider);
    return Scaffold(
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : checkoutInitState.map(
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (value) => const CheckoutPageContent(),
            ),
    );
  }
}
