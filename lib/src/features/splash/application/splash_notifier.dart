import 'package:classic_shop/src/helpers/in_memory_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_notifier.g.dart';

@Riverpod(keepAlive: true)
class SplashNotifier extends _$SplashNotifier {
  final _isSplashShown = InMemoryStore<bool?>(false);

  Stream<bool?> splashShownStateChanges() => _isSplashShown.stream;
  bool? get isSplashShown => _isSplashShown.value;

  void dispose() {
    _isSplashShown.close();
  }

  @override
  bool? build() {
    ref.onDispose(dispose);
    return _isSplashShown.value;
  }

  void setIsSplashShown({required bool isSplashShown}) {
    _isSplashShown.value = isSplashShown;
  }
}
