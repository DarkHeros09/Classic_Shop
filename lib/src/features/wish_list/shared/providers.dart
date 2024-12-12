import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_api.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_local_service.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_remote_service.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
WishListLocalService wishListLocalService(Ref ref) {
  return WishListLocalService(
    ref.watch(sembastDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
WishListApi wishListApi(Ref ref) {
  return WishListApi.create(ref);
}

@Riverpod(keepAlive: true)
WishListRemoteService wishListRemoteService(Ref ref) {
  return WishListRemoteService(
    ref.watch(wishListApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
WishListRepository wishListRepository(Ref ref) {
  return WishListRepository(
    ref.watch(wishListLocalServiceProvider),
    ref.watch(wishListRemoteServiceProvider),
    ref.watch(userStorageProvider),
    ref.watch(responseHeaderCacheProvider),
    // ref.watch(wishListIsarServiceProvider),
  );
}
