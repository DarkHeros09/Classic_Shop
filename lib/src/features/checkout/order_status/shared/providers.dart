import 'package:classic_shop/src/features/checkout/order_status/data/order_status_api.dart';
import 'package:classic_shop/src/features/checkout/order_status/data/order_status_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
OrderStatusApi orderStatusApi(Ref ref) {
  return OrderStatusApi.create(ref);
}

@Riverpod(keepAlive: true)
OrderStatusRemoteService orderStatusRemoteService(Ref ref) {
  return OrderStatusRemoteService(
    ref.watch(orderStatusApiProvider),
  );
}
