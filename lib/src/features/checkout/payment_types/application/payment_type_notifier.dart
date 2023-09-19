import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_extension.dart';
import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_remote_service.dart';
import 'package:classic_shop/src/features/checkout/payment_types/domain/payment_type.dart';
import 'package:classic_shop/src/features/checkout/payment_types/domain/payment_type_failure.dart';
import 'package:classic_shop/src/features/checkout/payment_types/shared/providers.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'payment_type_notifier.freezed.dart';

@freezed
class PaymentTypeState with _$PaymentTypeState {
  const PaymentTypeState._();
  const factory PaymentTypeState.initial(
    List<PaymentType> paymentTypes,
  ) = _Initial;
  const factory PaymentTypeState.loadInProgress(
    List<PaymentType> paymentTypes,
  ) = _LoadInProgress;
  const factory PaymentTypeState.loadSuccess(
    List<PaymentType> paymentTypes,
  ) = _LoadSuccess;
  const factory PaymentTypeState.loadFailure(
    List<PaymentType> paymentTypes,
    PaymentTypeFailure failure,
  ) = _LoadFailure;
}

class PaymentTypeNotifier extends AutoDisposeNotifier<PaymentTypeState> {
  late final PaymentTypeRemoteService _remoteService;
  late final UserStorage _userStorage;
  @override
  PaymentTypeState build() {
    _remoteService = ref.watch(paymentTypeRemoteServiceProvider);
    _userStorage = ref.watch(userStorageProvider);
    return const PaymentTypeState.initial([]);
  }

  Future<void> listPaymentTypes() async {
    final user = await _userStorage.read();
    if (user != null) {
      final paymentTypesDTO =
          await _remoteService.listPaymentTypes(userId: user.id);

      if (paymentTypesDTO != null) {
        final paymentTypes = paymentTypesDTO.toDomain();

        state = PaymentTypeState.loadSuccess(paymentTypes);
      }
    }
  }
}
