import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/wish_list/application/wish_list_notifier.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_api.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_local_service.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_remote_service.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:isar/isar.dart';

// final isarDBProvider = Provider<Isar>((ref) {
//   throw UnimplementedError();
// });

// final isarProvider = Provider((ref) {
//   return IsarDatabase(ref.watch(isarDBProvider));
// });

// final wishListIsarServiceProvider = Provider<WishListIsarService>((ref) {
//   return WishListIsarService(
//     ref.watch(isarProvider),
//   );
// });

final wishListLocalServiceProvider = Provider<WishListLocalService>((ref) {
  return WishListLocalService(
    ref.watch(sembastProvider),
  );
});

final wishListApiProvider = Provider<WishListApi>(WishListApi.create);

final wishListRemoteServiceProvider = Provider<WishListRemoteService>((ref) {
  return WishListRemoteService(
    ref.watch(wishListApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final wishListRepositoryProvider = Provider<WishListRepository>((ref) {
  return WishListRepository(
    ref.watch(wishListLocalServiceProvider),
    ref.watch(wishListRemoteServiceProvider),
    ref.watch(userStorageProvider),
    ref.watch(responseHeaderCacheProvider),
    // ref.watch(wishListIsarServiceProvider),
  );
});

final wishListNotifierProvider =
    NotifierProvider<WishListNotifier, WishListState>(WishListNotifier.new);
