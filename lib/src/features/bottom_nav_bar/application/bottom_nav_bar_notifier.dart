import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav_bar_notifier.g.dart';

class BottomNavBarIndex {
  BottomNavBarIndex(this.index);
  int index;
}

@riverpod
class BottomNavBarNotifier extends _$BottomNavBarNotifier {
  @override
  BottomNavBarIndex build() {
    return BottomNavBarIndex(0);
  }
}
