import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/auth/data/auth_api.dart';
import 'package:classic_shop/src/features/auth/data/auth_remote_service.dart';
import 'package:classic_shop/src/features/auth/data/token_storage/secure_token_storage.dart';
import 'package:classic_shop/src/features/core/data/user_storage/secure_user_storage.dart';
import 'package:classic_shop/src/features/core/domain/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
FlutterSecureStorage flutterSecureStorage(Ref ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );
}

@Riverpod(keepAlive: true)
SecureCredentialsStorage credentialsStorage(Ref ref) {
  return SecureCredentialsStorage(ref.watch(flutterSecureStorageProvider));
}

@Riverpod(keepAlive: true)
SecureUserStorage userStorage(Ref ref) {
  return SecureUserStorage(ref.watch(flutterSecureStorageProvider));
}

@Riverpod(keepAlive: true)
AuthApi authApi(Ref ref) {
  return AuthApi.create();
}

@Riverpod(keepAlive: true)
AuthApi2 authApi2(Ref ref) {
  return AuthApi2.create(ref);
}

@Riverpod(keepAlive: true)
AuthRemoteService authRemoteService(Ref ref) {
  return AuthRemoteService(
    ref.watch(credentialsStorageProvider),
    ref.watch(userStorageProvider),
    ref.watch(authApiProvider),
    ref.watch(authApi2Provider),
  );
}

@riverpod
Stream<User?> authStateChanges(Ref ref) {
  final authNotifier = ref.watch(authNotifierProvider.notifier);
  return authNotifier.authStateChanges();
}
