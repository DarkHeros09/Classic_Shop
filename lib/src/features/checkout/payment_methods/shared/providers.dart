import 'package:classic_shop/src/features/checkout/payment_methods/application/payment_method_notifier.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/data/payment_method_api.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/data/payment_method_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final paymentMethodApiProvider =
    Provider<PaymentMethodApi>(PaymentMethodApi.create);

final paymentMethodRemoteServiceProvider =
    Provider<PaymentMethodRemoteService>((ref) {
  return PaymentMethodRemoteService(
    ref.watch(paymentMethodApiProvider),
  );
});

final paymentMethodNotifierProvider =
    NotifierProvider.autoDispose<PaymentMethodNotifier, PaymentMethodState>(
  PaymentMethodNotifier.new,
);
