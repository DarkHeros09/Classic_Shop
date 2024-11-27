import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/order_status/data/order_status_remote_service.dart';
import 'package:classic_shop/src/features/checkout/order_status/domain/order_status.dart';
import 'package:classic_shop/src/features/checkout/order_status/domain/order_status_failure.dart';
import 'package:classic_shop/src/features/checkout/order_status/shared/providers.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_status_notifier.freezed.dart';
part 'order_status_notifier.g.dart';

@freezed
class OrderStatusState with _$OrderStatusState {
  const OrderStatusState._();
  const factory OrderStatusState.initial() = _Initial;
  const factory OrderStatusState.loadInProgress() = _LoadInProgress;
  const factory OrderStatusState.loadSuccess(OrderStatus orderStatus) =
      _LoadSuccess;
  const factory OrderStatusState.loadFailure(
    OrderStatusFailure failure,
  ) = _LoadFailure;
}

@riverpod
class OrderStatusNotifier extends _$OrderStatusNotifier {
  late final OrderStatusRemoteService _remoteService;
  late final UserStorage _userStorage;

  @override
  OrderStatusState build() {
    _remoteService = ref.watch(orderStatusRemoteServiceProvider);
    _userStorage = ref.watch(userStorageProvider);
    return const OrderStatusState.initial();
  }

  Future<void> getOrderStatus({
    required int statusId,
  }) async {
    final user = await _userStorage.read();
    if (user != null) {
      state = const OrderStatusState.loadInProgress();
      final orderStatusDTO = await _remoteService.getOrderStatus(
        userId: user.id,
        statusId: statusId,
      );
      debugPrint('ORDER STATUS !!!!!!!');
      debugPrint(orderStatusDTO.toDomain().toString());
      state = OrderStatusState.loadSuccess(orderStatusDTO.toDomain());
    }
  }
}
