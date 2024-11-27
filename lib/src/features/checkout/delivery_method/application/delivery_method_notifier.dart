import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_extension.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_remote_service.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/domain/delivery_method.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/domain/delivery_method_failure.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/shared/providers.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delivery_method_notifier.freezed.dart';
part 'delivery_method_notifier.g.dart';

@freezed
class DeliveryMethodState with _$DeliveryMethodState {
  const DeliveryMethodState._();
  const factory DeliveryMethodState.initial(
    List<DeliveryMethod> deliveryMethods,
  ) = _Initial;
  const factory DeliveryMethodState.loadInProgress(
    List<DeliveryMethod> deliveryMethods,
  ) = _LoadInProgress;
  const factory DeliveryMethodState.loadSuccess(
    List<DeliveryMethod> deliveryMethods,
  ) = _LoadSuccess;
  const factory DeliveryMethodState.loadFailure(
    List<DeliveryMethod> deliveryMethods,
    DeliveryMethodFailure failure,
  ) = _LoadFailure;
}

@riverpod
class DeliveryMethodNotifier extends _$DeliveryMethodNotifier {
  late final DeliveryMethodRemoteService _remoteService;
  late final UserStorage _userStorage;
  @override
  DeliveryMethodState build() {
    _remoteService = ref.watch(deliveryMethodRemoteServiceProvider);
    _userStorage = ref.watch(userStorageProvider);
    return const DeliveryMethodState.initial([]);
  }

  Future<void> listDeliveryMethods() async {
    state = const DeliveryMethodState.loadInProgress([]);
    final user = await _userStorage.read();
    if (user != null) {
      final deliveryMethodsDTO =
          await _remoteService.listDeliveryMethods(userId: user.id);

      if (deliveryMethodsDTO != null) {
        final deliveryMethods = deliveryMethodsDTO.toDomain();

        state = DeliveryMethodState.loadSuccess(deliveryMethods);
      }
    }
  }
}
