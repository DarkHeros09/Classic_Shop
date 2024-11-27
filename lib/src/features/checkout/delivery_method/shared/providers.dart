import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_api.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
DeliveryMethodApi deliveryMethodApi(Ref ref) {
  return DeliveryMethodApi.create(ref);
}

@Riverpod(keepAlive: true)
DeliveryMethodRemoteService deliveryMethodRemoteService(Ref ref) {
  return DeliveryMethodRemoteService(
    ref.watch(deliveryMethodApiProvider),
  );
}
