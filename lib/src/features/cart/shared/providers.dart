import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/data/cart_api.dart';
import 'package:classic_shop/src/features/cart/data/cart_local_service.dart';
import 'package:classic_shop/src/features/cart/data/cart_remote_service.dart';
import 'package:classic_shop/src/features/cart/data/cart_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartLocalServiceProvider = Provider<CartLocalService>((ref) {
  return CartLocalService(
    ref.watch(sembastProvider),
  );
});

final cartApiProvider = Provider<CartApi>(CartApi.create);

final cartRemoteServiceProvider = Provider<CartRemoteService>((ref) {
  return CartRemoteService(
    ref.watch(cartApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(
    ref.watch(cartLocalServiceProvider),
    ref.watch(cartRemoteServiceProvider),
    ref.watch(userStorageProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final cartNotifierProvider =
    NotifierProvider<CartNotifier, CartState>(CartNotifier.new);
