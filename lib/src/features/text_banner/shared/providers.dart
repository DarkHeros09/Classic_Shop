import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_api.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_local_service.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_remote_service.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
TextBannerLocalService textBannerLocalService(Ref ref) {
  return TextBannerLocalService(
    ref.watch(sembastProvider),
  );
}

@Riverpod(keepAlive: true)
TextBannerApi textBannerApi(Ref ref) {
  return TextBannerApi.create();
}

@Riverpod(keepAlive: true)
TextBannerRemoteService textBannerRemoteService(Ref ref) {
  return TextBannerRemoteService(
    ref.watch(textBannerApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
TextBannerRepository textBannerRepository(Ref ref) {
  return TextBannerRepository(
    ref.watch(textBannerLocalServiceProvider),
    ref.watch(textBannerRemoteServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}
