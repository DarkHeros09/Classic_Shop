import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/checkout/core/data/checkout_remote_service.dart';
import 'package:classic_shop/src/features/checkout/core/shared/providers.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_notifier.freezed.dart';
part 'checkout_notifier.g.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const CheckoutState._();
  const factory CheckoutState.initial(
      // Checkout checkout,
      ) = _Initial;
  const factory CheckoutState.loadInProgress(
      // Checkout checkout,
      ) = _LoadInProgress;
  const factory CheckoutState.loadSuccess(
      // Checkout checkout,
      ) = _LoadSuccess;
  const factory CheckoutState.loadFailure(
      // Checkout checkout,
      // CheckoutFailure failure,
      ) = _LoadFailure;
}

@riverpod
class CheckoutNotifier extends _$CheckoutNotifier {
  late final CheckoutRemoteService _remoteService;
  late final UserStorage _userStorage;
  @override
  CheckoutState build() {
    _remoteService = ref.watch(checkoutRemoteServiceProvider);
    _userStorage = ref.watch(userStorageProvider);
    return const CheckoutState.initial();
  }

  Future<void> checkout({
    required BuildContext context,
    required int userAddressId,
    required int paymentTypeId,
    required int shippingMethodId,
    required int orderStatusId,
    required num orderTotal,
  }) async {
    state = const CheckoutState.loadInProgress();
    final user = await _userStorage.read();
    if (user != null) {
      final remoteResponse = await _remoteService.checkout(
        userId: user.id,
        cartId: user.shoppingCartId ?? 0,
        userAddressId: userAddressId,
        paymentTypeId: paymentTypeId,
        shippingMethodId: shippingMethodId,
        orderStatusId: orderStatusId,
        orderTotal: orderTotal,
      );
      state = await remoteResponse.fold(
        (l) => const CheckoutState.loadFailure(),
        (r) {
          ref.read(cartNotifierProvider.notifier).fetchCart();
          context.goNamed(AppRoute.checkoutSuccess.name);
          return const CheckoutState.loadSuccess();
        },
      );
    } else {
      state = const CheckoutState.loadFailure();
    }
  }
}
