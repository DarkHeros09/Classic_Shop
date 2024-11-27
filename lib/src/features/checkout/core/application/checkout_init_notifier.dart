import 'package:classic_shop/src/features/address/application/address_notifier.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/application/delivery_method_notifier.dart';
import 'package:classic_shop/src/features/checkout/order_status/application/order_status_notifier.dart';
import 'package:classic_shop/src/features/checkout/payment_types/application/payment_type_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_init_notifier.freezed.dart';
part 'checkout_init_notifier.g.dart';

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

@riverpod
class CheckoutInitNotifier extends _$CheckoutInitNotifier {
  @override
  CheckoutInitState build() {
    return const CheckoutInitState.initial();
  }

  Future<void> intiCheckout() async {
    final user = await ref.read(userStorageProvider).read();
    if (user != null) {
      state = const CheckoutInitState.loadInProgress();
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
