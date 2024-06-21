import 'dart:async';

import 'package:flutter/foundation.dart';

/// This class was imported from the migration guide for GoRouter 5.0
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(List<Stream<dynamic>> stream) {
    notifyListeners();
    _subscription1 = stream[0].asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
    _subscription2 = stream[1].asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription1;
  late final StreamSubscription<dynamic> _subscription2;

  @override
  void dispose() {
    _subscription1.cancel();
    _subscription2.cancel();
    super.dispose();
  }
}
