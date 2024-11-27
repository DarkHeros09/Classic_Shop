import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthInterceptor implements Authenticator, Interceptor {
  const AuthInterceptor({required this.ref});

  final Ref ref;
  // @override
  // FutureOr<Request> onRequest(Request request) async {
  //   debugPrint('onRequest');
  //   final remoteService = ref.read(authRemoteServiceProvider);
  //   final credentials = await remoteService.getSignedInCredentials();
  //   debugPrint('credentialsNULL ${credentials == null}');
  //   return applyHeaders(
  //     request,
  //     credentials == null
  //         ? {'Content-Type': 'application/json'}
  //         : {
  //             'Content-Type': 'application/json',
  //             'Authorization': 'Bearer ${credentials.accessToken}',
  //           },
  //   );
  // }

  @override
  FutureOr<Request?> authenticate(
    Request request,
    Response<dynamic> response, [
    Request? originalRequest,
  ]) async {
    debugPrint('authenticate');
    debugPrint('${response.statusCode}');
    debugPrint('${response.body}');

    if (response.statusCode == 401 ||
        response.statusCode == 404 ||
        response.statusCode == 500) {
      debugPrint('ERROR ${response.statusCode}');
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
      if (credentials == null) {
        await ref.read(authNotifierProvider.notifier).signOut();
        return null;
      }
      debugPrint('AUTHENTICATED');
      return request
        ..headers['Content-Type'] = 'application/json'
        ..headers['Authorization'] = 'Bearer ${credentials.accessToken}';
    }
    return null;
  }

  @override
  // TODO: implement onAuthenticationFailed
  AuthenticationCallback? get onAuthenticationFailed => null;

  @override
  // TODO: implement onAuthenticationSuccessful
  AuthenticationCallback? get onAuthenticationSuccessful => null;

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
    Chain<BodyType> chain,
  ) async {
    debugPrint('onRequest');
    final remoteService = ref.read(authRemoteServiceProvider);
    final credentials = await remoteService.getSignedInCredentials();
    debugPrint('credentialsNULL ${credentials == null}');
    return chain.proceed(
      applyHeaders(
        chain.request,
        credentials == null
            ? {'Content-Type': 'application/json'}
            : {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ${credentials.accessToken}',
              },
      ),
    );
  }
}
