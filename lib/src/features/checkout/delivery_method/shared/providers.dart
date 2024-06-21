import 'package:classic_shop/src/features/checkout/delivery_method/application/delivery_method_notifier.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_api.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deliveryMethodApiProvider =
    Provider<DeliveryMethodApi>(DeliveryMethodApi.create);

final deliveryMethodRemoteServiceProvider =
    Provider<DeliveryMethodRemoteService>((ref) {
  return DeliveryMethodRemoteService(
    ref.watch(deliveryMethodApiProvider),
  );
});

final deliveryMethodNotifierProvider =
    NotifierProvider.autoDispose<DeliveryMethodNotifier, DeliveryMethodState>(
  DeliveryMethodNotifier.new,
);
