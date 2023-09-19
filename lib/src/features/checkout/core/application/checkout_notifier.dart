import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/checkout/core/data/checkout_remote_service.dart';
import 'package:classic_shop/src/features/checkout/core/shared/providers.dart';
import 'package:classic_shop/src/features/core/data/user_storage/user_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckoutNotifier extends AutoDisposeNotifier<void> {
  late final CheckoutRemoteService _remoteService;
  late final UserStorage _userStorage;
  @override
  void build() {
    _remoteService = ref.watch(checkoutRemoteServiceProvider);
    _userStorage = ref.watch(userStorageProvider);
  }

  Future<void> checkout({
    required int userAddressId,
    required int paymentTypeId,
    required int shippingMethodId,
    required int orderStatusId,
    required num orderTotal,
  }) async {
    final user = await _userStorage.read();
    if (user != null) {
      await _remoteService.checkout(
        userId: user.id,
        cartId: user.shoppingCartId,
        userAddressId: userAddressId,
        paymentTypeId: paymentTypeId,
        shippingMethodId: shippingMethodId,
        orderStatusId: orderStatusId,
        orderTotal: orderTotal,
      );
    }
  }
}
