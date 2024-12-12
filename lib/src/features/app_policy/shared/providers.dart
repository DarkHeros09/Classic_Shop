import 'package:classic_shop/src/features/app_policy/data/app_policy_api.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_local_service.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_remote_service.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
AppPolicyLocalService appPolicyLocalService(Ref ref) {
  return AppPolicyLocalService(
    ref.watch(sembastDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
AppPolicyApi appPolicyApi(Ref ref) {
  return AppPolicyApi.create(ref);
}

@Riverpod(keepAlive: true)
AppPolicyRemoteService appPolicyRemoteService(Ref ref) {
  return AppPolicyRemoteService(
    ref.watch(appPolicyApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
AppPolicyRepository appPolicyRepository(Ref ref) {
  return AppPolicyRepository(
    ref.watch(appPolicyLocalServiceProvider),
    ref.watch(appPolicyRemoteServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}
