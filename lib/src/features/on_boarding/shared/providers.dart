import 'package:classic_shop/src/features/on_boarding/data/on_boarding_local_service.dart';
import 'package:classic_shop/src/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
OnBoardingLocalService onBoardingLocalService(Ref ref) {
  return OnBoardingLocalService(
    ref.watch(sharedPreferencesProvider).requireValue,
  );
}

//////* Presentation //////////////

@riverpod
class OnBoardingIndexNotifier extends _$OnBoardingIndexNotifier {
  @override
  int build() {
    return 0;
  }

  void index(int index) {
    state = index;
  }
}
