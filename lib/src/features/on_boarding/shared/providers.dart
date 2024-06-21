import 'package:classic_shop/src/features/on_boarding/application/on_boarding_notifier.dart';
import 'package:classic_shop/src/features/on_boarding/data/on_boarding_local_service.dart';
import 'package:classic_shop/src/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final onBoardingLocalServiceProvider = Provider<OnBoardingLocalService>((ref) {
  return OnBoardingLocalService(ref.watch(sharedPreferencesProvider));
});

final onBoardingNotifierProvider =
    NotifierProvider<OnBoardingNotifier, bool?>(OnBoardingNotifier.new);
