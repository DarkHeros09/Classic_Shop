import 'package:classic_shop/src/features/checkout/payment_types/application/payment_type_notifier.dart';
import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_api.dart';
import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final paymentTypeApiProvider = Provider<PaymentTypeApi>(PaymentTypeApi.create);

final paymentTypeRemoteServiceProvider =
    Provider<PaymentTypeRemoteService>((ref) {
  return PaymentTypeRemoteService(
    ref.watch(paymentTypeApiProvider),
  );
});

final paymentTypeNotifierProvider =
    NotifierProvider.autoDispose<PaymentTypeNotifier, PaymentTypeState>(
  PaymentTypeNotifier.new,
);
