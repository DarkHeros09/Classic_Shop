import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomNavBarIndex {
  BottomNavBarIndex(this.index);
  int index;
}

class BottomNavBarNotifier extends AutoDisposeNotifier<BottomNavBarIndex> {
  @override
  BottomNavBarIndex build() {
    return BottomNavBarIndex(0);
  }
}

final bottomNavBarNotifierProvider =
    NotifierProvider.autoDispose<BottomNavBarNotifier, BottomNavBarIndex>(
  BottomNavBarNotifier.new,
);
