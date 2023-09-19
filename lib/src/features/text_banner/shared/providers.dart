import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/text_banner/application/text_banner_notifier.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_api.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_local_service.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_remote_service.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final textBannerLocalServiceProvider = Provider<TextBannerLocalService>((ref) {
  return TextBannerLocalService(
    ref.watch(sembastProvider),
  );
});

final textBannerApiProvider = Provider<TextBannerApi>((ref) {
  return TextBannerApi.create();
});

final textBannerRemoteServiceProvider =
    Provider<TextBannerRemoteService>((ref) {
  return TextBannerRemoteService(
    ref.watch(textBannerApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final textBannerRepositoryProvider = Provider<TextBannerRepository>((ref) {
  return TextBannerRepository(
    ref.watch(textBannerLocalServiceProvider),
    ref.watch(textBannerRemoteServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final textBannerNotifierProvider =
    NotifierProvider<TextBannerNotifier, TextBannerState>(
  TextBannerNotifier.new,
);
