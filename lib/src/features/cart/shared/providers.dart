import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/cart/data/cart_api.dart';
import 'package:classic_shop/src/features/cart/data/cart_local_service.dart';
import 'package:classic_shop/src/features/cart/data/cart_remote_service.dart';
import 'package:classic_shop/src/features/cart/data/cart_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
CartLocalService cartLocalService(Ref ref) {
  return CartLocalService(
    ref.watch(sembastProvider),
  );
}

@Riverpod(keepAlive: true)
CartApi cartApi(Ref ref) {
  return CartApi.create(ref);
}

@Riverpod(keepAlive: true)
CartRemoteService cartRemoteService(Ref ref) {
  return CartRemoteService(
    ref.watch(cartApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
CartRepository cartRepository(Ref ref) {
  return CartRepository(
    ref.watch(cartLocalServiceProvider),
    ref.watch(cartRemoteServiceProvider),
    ref.watch(userStorageProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

//////////////* Presentation ///////////////////

@Riverpod(keepAlive: true, dependencies: [])
int cartItemsListIndex(Ref ref) {
  throw UnimplementedError();
}
