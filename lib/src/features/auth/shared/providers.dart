import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/auth/data/auth_api.dart';
import 'package:classic_shop/src/features/auth/data/auth_remote_service.dart';
import 'package:classic_shop/src/features/auth/data/token_storage/secure_token_storage.dart';
import 'package:classic_shop/src/features/core/data/user_storage/secure_user_storage.dart';
import 'package:classic_shop/src/features/core/domain/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final flutterSecureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );
});

final credentialsStorageProvider = Provider(
  (ref) {
    return SecureCredentialsStorage(ref.watch(flutterSecureStorageProvider));
  },
);

final userStorageProvider = Provider(
  (ref) {
    return SecureUserStorage(ref.watch(flutterSecureStorageProvider));
  },
);

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi.create();
});

final authApi2Provider = Provider<AuthApi2>(AuthApi2.create);

final authRemoteServiceProvider = Provider<AuthRemoteService>((ref) {
  return AuthRemoteService(
    ref.watch(credentialsStorageProvider),
    ref.watch(userStorageProvider),
    ref.watch(authApiProvider),
    ref.watch(authApi2Provider),
  );
});

final authNotifierProvider =
    NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

final authStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  final authNotifier = ref.watch(authNotifierProvider.notifier);
  return authNotifier.authStateChanges();
});
