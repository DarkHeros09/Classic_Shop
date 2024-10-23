import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_local_service.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_remote_service.dart';
import 'package:classic_shop/src/features/app_policy/domain/app_policy.dart';
import 'package:classic_shop/src/features/app_policy/domain/app_policy_failure.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:dartz/dartz.dart';

class AppPolicyRepository {
  const AppPolicyRepository(
    this._localService,
    this._remoteService,
    this._headersCache,
  );

  final AppPolicyLocalService _localService;
  final AppPolicyRemoteService _remoteService;
  final ResponseHeadersCache _headersCache;

  Future<Either<AppPolicyFailure, Fresh<AppPolicy>>> fetchAppPolicy() async {
    try {
      final requestUri = Uri.http(
        Env.httpAddress,
        '/usr/v1/app-policy',
      );

      final appPolicy = await _remoteService.fetchAppPolicy(
        requestUri: requestUri,
      );

      return right(
        await appPolicy.when(
          noConnection: () async => Fresh.no(
            // await _localService.fetchAppPolicy(user.id)
            await _localService.fetchAppPolicy().then(
                  (_) =>
                      _?.toDomain() ??
                      const AppPolicy(
                        id: 0,
                        policy: null,
                        createdAt: null,
                        updatedAt: null,
                      ),
                ),
          ),
          noContent: () async {
            // await _localService.deleteAppPolicy(user.id);
            return Fresh.no(
              await _localService.fetchAppPolicy().then(
                    (_) =>
                        _?.toDomain() ??
                        const AppPolicy(
                          id: 0,
                          policy: null,
                          createdAt: null,
                          updatedAt: null,
                        ),
                  ),
            );
          },
          notModified: (_) async {
            final localData =
                // await _localService
                //     .fetchAppPolicy(user.id)
                await _localService.fetchAppPolicy().then(
                      (_) =>
                          _?.toDomain() ??
                          const AppPolicy(
                            id: 0,
                            policy: null,
                            createdAt: null,
                            updatedAt: null,
                          ),
                    );
            if (localData.id == 0) {
              await _headersCache.deleteHeaders(requestUri);
            }
            return Fresh.yes(localData);
          },
          withNewData: (data, _) async {
            await _localService.deleteAppPolicy();
            if (data != null) {
              await _localService.setAppPolicy(data);
            }

            return Fresh.yes(
              data?.toDomain() ??
                  const AppPolicy(
                    id: 0,
                    policy: null,
                    createdAt: null,
                    updatedAt: null,
                  ),
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(AppPolicyFailure.server('error code: ${e.errorCode}'));
    } on Exception catch (_) {
      rethrow;
    }
  }
}
