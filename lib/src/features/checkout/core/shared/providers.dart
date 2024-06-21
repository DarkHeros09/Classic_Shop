import 'package:classic_shop/src/features/checkout/core/application/checkout_init_notifier.dart';
import 'package:classic_shop/src/features/checkout/core/application/checkout_notifier.dart';
import 'package:classic_shop/src/features/checkout/core/data/checkout_api.dart';
import 'package:classic_shop/src/features/checkout/core/data/checkout_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final checkoutApiProvider = Provider<CheckoutApi>(CheckoutApi.create);

final checkoutRemoteServiceProvider = Provider<CheckoutRemoteService>((ref) {
  return CheckoutRemoteService(
    ref.watch(checkoutApiProvider),
  );
});

final checkoutNotifierProvider =
    NotifierProvider.autoDispose<CheckoutNotifier, CheckoutState>(
  CheckoutNotifier.new,
);

final checkoutInitNotifierProvider =
    NotifierProvider.autoDispose<CheckoutInitNotifier, CheckoutInitState>(
  CheckoutInitNotifier.new,
);
