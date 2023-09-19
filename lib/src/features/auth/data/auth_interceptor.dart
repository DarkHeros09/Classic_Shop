import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthInterceptor implements Authenticator, RequestInterceptor {
  final ref = ProviderContainer();

  @override
  FutureOr<Request> onRequest(Request request) async {
    debugPrint('onRequest');
    final remoteService = ref.read(authRemoteServiceProvider);
    final credentials = await remoteService.getSignedInCredentials();
    debugPrint('credentialsNULL ${credentials == null}');
    return applyHeaders(
      request,
      credentials == null
          ? {'Content-Type': 'application/json'}
          : {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${credentials.accessToken}',
            },
    );
  }

  @override
  FutureOr<Request?> authenticate(
    Request request,
    Response<dynamic> response, [
    Request? originalRequest,
  ]) async {
    debugPrint('authenticate');
    if (response.statusCode == 401) {
      debugPrint('ERROR 401');
      debugPrint(originalRequest?.uri.toString());
      // final authNotifier = ref.read(authNotifierProvider.notifier);
      final remoteService = ref.read(authRemoteServiceProvider);
      // debugPrint('STEP 1');

      final failureOrCredentials = await remoteService.renewRefreshToken();
      final credentials = failureOrCredentials.fold((l) => null, (r) => r);

      debugPrint('credentials of intercep: $credentials');

      debugPrint('STEP 2');
      // credentials != null && credentials.canRefresh
      //     ? await remoteService.renewRefreshToken()
      // await remoteService.signOut();
      // credentials ?? await authNotifier.signOut();
      // await remoteService.getSignedInCredentials();

      // await authNotifier.forcedSignOut();

      debugPrint('STEP 3');
      // final refreshedCredentials = await remoteService.getSignedInCredentials();
      if (credentials != null) {
        debugPrint('AUTHENTICATED');
        return request
          ..headers['Content-Type'] = 'application/json'
          ..headers['Authorization'] = 'Bearer ${credentials.accessToken}';
      }
      return null;
    }
    return null;
  }
}
