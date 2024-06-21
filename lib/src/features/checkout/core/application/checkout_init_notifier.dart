import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/order_status/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/payment_types/shared/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'checkout_init_notifier.freezed.dart';

@freezed
class CheckoutInitState with _$CheckoutInitState {
  const CheckoutInitState._();
  const factory CheckoutInitState.initial(
      // Checkout checkout,
      ) = _Initial;
  const factory CheckoutInitState.loadInProgress(
      // Checkout checkout,
      ) = _LoadInProgress;
  const factory CheckoutInitState.loadSuccess(
      // Checkout checkout,
      ) = _LoadSuccess;
}

class CheckoutInitNotifier extends AutoDisposeNotifier<CheckoutInitState> {
  @override
  CheckoutInitState build() {
    return const CheckoutInitState.initial();
  }

  Future<void> intiCheckout() async {
    state = const CheckoutInitState.loadInProgress();
    final user = await ref.read(userStorageProvider).read();
    if (user != null) {
      await Future.wait([
        ref.read(paymentTypeNotifierProvider.notifier).listPaymentTypes(),
        ref.read(addressNotifierProvider.notifier).fetchAddress(user.id),
        ref.read(deliveryMethodNotifierProvider.notifier).listDeliveryMethods(),
        ref
            .read(orderStatusNotifierProvider.notifier)
            .getOrderStatus(statusId: 1),
      ]).whenComplete(() => state = const CheckoutInitState.loadSuccess());
    }
  }
}
