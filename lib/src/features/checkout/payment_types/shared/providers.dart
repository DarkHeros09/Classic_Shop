import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_api.dart';
import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
PaymentTypeApi paymentTypeApi(Ref ref) {
  return PaymentTypeApi.create(ref);
}

@Riverpod(keepAlive: true)
PaymentTypeRemoteService paymentTypeRemoteService(Ref ref) {
  return PaymentTypeRemoteService(
    ref.watch(paymentTypeApiProvider),
  );
}
