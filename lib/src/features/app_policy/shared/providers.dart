import 'package:classic_shop/src/features/app_policy/application/app_policy_notifier.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_api.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_local_service.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_remote_service.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appPolicyLocalServiceProvider = Provider<AppPolicyLocalService>((ref) {
  return AppPolicyLocalService(
    ref.watch(sembastProvider),
  );
});

final appPolicyApiProvider = Provider<AppPolicyApi>(AppPolicyApi.create);

final appPolicyRemoteServiceProvider = Provider<AppPolicyRemoteService>((ref) {
  return AppPolicyRemoteService(
    ref.watch(appPolicyApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final appPolicyRepositoryProvider = Provider<AppPolicyRepository>((ref) {
  return AppPolicyRepository(
    ref.watch(appPolicyLocalServiceProvider),
    ref.watch(appPolicyRemoteServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final appPolicyNotifierProvider =
    NotifierProvider<AppPolicyNotifier, AppPolicyState>(
  AppPolicyNotifier.new,
);
