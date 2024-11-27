import 'package:classic_shop/src/features/on_boarding/data/on_boarding_local_service.dart';
import 'package:classic_shop/src/features/on_boarding/shared/providers.dart';
import 'package:classic_shop/src/helpers/in_memory_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_boarding_notifier.g.dart';

@Riverpod(keepAlive: true)
class OnBoardingNotifier extends _$OnBoardingNotifier {
  late final OnBoardingLocalService _localService;
  final _isOnBoardingShown = InMemoryStore<bool?>(null);

  Stream<bool?> onBoardingShownStateChanges() => _isOnBoardingShown.stream;
  bool? get currentValue => _isOnBoardingShown.value;

  void dispose() {
    _isOnBoardingShown.close();
  }

  @override
  bool? build() {
    _localService = ref.watch(onBoardingLocalServiceProvider);
    final isOnBoardingShown = _localService.getIsOnBoardingShown();
    _isOnBoardingShown.value = isOnBoardingShown;
    ref.onDispose(dispose);
    return _localService.getIsOnBoardingShown();
  }

  Future<bool> setIsOnBoardingShown({required bool isOnBoardingShown}) async {
    _isOnBoardingShown.value = isOnBoardingShown;
    return _localService.setIsOnBoardingShown(
      isOnBoardingShown: isOnBoardingShown,
    );
  }

  bool? getIsOnBoardingShown() {
    return _localService.getIsOnBoardingShown();
  }
}
