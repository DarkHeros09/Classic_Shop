import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/size/data/size_api.dart';
import 'package:classic_shop/src/features/size/data/size_local_service.dart';
import 'package:classic_shop/src/features/size/data/size_remote_service.dart';
import 'package:classic_shop/src/features/size/data/size_repository.dart';
import 'package:classic_shop/src/features/size/domain/size.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
SizeLocalService sizeLocalService(Ref ref) {
  return SizeLocalService(
    ref.watch(sembastDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
SizeApi sizeApi(Ref ref) {
  return SizeApi.create();
}

@Riverpod(keepAlive: true)
SizeRemoteService sizeRemoteService(Ref ref) {
  return SizeRemoteService(
    ref.watch(sizeApiProvider),
    // ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
SizeRepository sizeRepository(Ref ref) {
  return SizeRepository(
    // ref.watch(sizeLocalServiceProvider),
    ref.watch(sizeRemoteServiceProvider),
  );
}

////////* Presentation ///////////////////

@riverpod
class SelectedSize extends _$SelectedSize {
  @override
  SizeModel? build() {
    return null;
  }

  void setSize(SizeModel? size) {
    state = size;
  }
}
