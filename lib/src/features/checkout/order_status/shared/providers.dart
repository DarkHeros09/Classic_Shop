import 'package:classic_shop/src/features/checkout/order_status/application/order_status_notifier.dart';
import 'package:classic_shop/src/features/checkout/order_status/data/order_status_api.dart';
import 'package:classic_shop/src/features/checkout/order_status/data/order_status_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderStatusApiProvider = Provider<OrderStatusApi>(OrderStatusApi.create);

final orderStatusRemoteServiceProvider =
    Provider<OrderStatusRemoteService>((ref) {
  return OrderStatusRemoteService(
    ref.watch(orderStatusApiProvider),
  );
});

final orderStatusNotifierProvider =
    NotifierProvider.autoDispose<OrderStatusNotifier, OrderStatusState>(
  OrderStatusNotifier.new,
);
