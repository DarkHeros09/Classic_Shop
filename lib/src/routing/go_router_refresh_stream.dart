import 'dart:async';

import 'package:flutter/foundation.dart';

/// This class was imported from the migration guide for GoRouter 5.0
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(List<Stream<dynamic>> streams) {
    notifyListeners();
    _subscriptions = streams
        .map(
          (stream) => stream.asBroadcastStream().listen(
                (dynamic _) => notifyListeners(),
              ),
        )
        .toList();
  }
  late final List<StreamSubscription<dynamic>> _subscriptions;

  @override
  void dispose() {
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
    super.dispose();
  }
}
