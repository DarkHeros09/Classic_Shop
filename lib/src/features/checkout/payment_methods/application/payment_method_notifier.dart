import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/data/payment_method_remote_service.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/domain/payment_method.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/domain/payment_method_failure.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/shared/providers.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'payment_method_notifier.freezed.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const PaymentMethodState._();
  const factory PaymentMethodState.initial() = _Initial;
  const factory PaymentMethodState.loadInProgress() = _LoadInProgress;
  const factory PaymentMethodState.loadSuccess(PaymentMethod paymentMethod) =
      _LoadSuccess;
  const factory PaymentMethodState.loadFailure(
    PaymentMethodFailure failure,
  ) = _LoadFailure;
}

class PaymentMethodNotifier extends AutoDisposeNotifier<PaymentMethodState> {
  late final PaymentMethodRemoteService _remoteService;
  late final UserStorage _userStorage;

  @override
  PaymentMethodState build() {
    _remoteService = ref.watch(paymentMethodRemoteServiceProvider);
    _userStorage = ref.watch(userStorageProvider);
    return const PaymentMethodState.initial();
  }

  Future<void> createPaymentMethod({
    required int paymentTypeId,
    required String provider,
  }) async {
    final user = await _userStorage.read();
    if (user != null) {
      state = const PaymentMethodState.loadInProgress();
      final failureOrPaymentMethodDTO =
          await _remoteService.createPaymentMethod(
        userId: user.id,
        paymentTypeId: paymentTypeId,
        provider: provider,
      );
      state = failureOrPaymentMethodDTO.fold(
        PaymentMethodState.loadFailure,
        (r) => PaymentMethodState.loadSuccess(r!.toDomain()),
      );
    }
  }

  Future<void> getPaymentMethod({
    // required int paymentMethodId,
    required int paymentTypeId,
  }) async {
    final user = await _userStorage.read();
    if (user != null) {
      state = const PaymentMethodState.loadInProgress();
      final failureOrPaymentMethodDTO = await _remoteService.getPaymentMethod(
        userId: user.id,
        // paymentMethodId: paymentMethodId,
        paymentTypeId: paymentTypeId,
      );

      state = failureOrPaymentMethodDTO.fold(
        PaymentMethodState.loadFailure,
        (r) => PaymentMethodState.loadSuccess(r!.toDomain()),
      );
    }
  }
}
