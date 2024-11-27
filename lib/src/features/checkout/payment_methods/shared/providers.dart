import 'package:classic_shop/src/features/checkout/payment_methods/data/payment_method_api.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/data/payment_method_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
PaymentMethodApi paymentMethodApi(Ref ref) {
  return PaymentMethodApi.create(ref);
}

@Riverpod(keepAlive: true)
PaymentMethodRemoteService paymentMethodRemoteService(Ref ref) {
  return PaymentMethodRemoteService(
    ref.watch(paymentMethodApiProvider),
  );
}
