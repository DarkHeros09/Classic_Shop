import 'dart:io';

import 'package:classic_shop/src/features/app_policy/data/app_policy_api.dart';
import 'package:classic_shop/src/features/app_policy/data/app_policy_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';

abstract class IAppPolicyRemoteService {
  Future<RemoteResponse<AppPolicyDTO?>> fetchAppPolicy({
    required Uri requestUri,
  });
}

class AppPolicyRemoteService implements IAppPolicyRemoteService {
  AppPolicyRemoteService(
    this._appPolicyApi,
    this._headersCache,
  );

  final AppPolicyApi _appPolicyApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<AppPolicyDTO?>> fetchAppPolicy({
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      final response = await _appPolicyApi.getAppPolicy(
        ifNoneMatch: previousHeaders?.etag ?? '',
      );

      if (response.statusCode == 304) {
        return const RemoteResponse.notModified(
          nextAvailable: false,
        );
      }

      if (response.isSuccessful) {
        final headers = ResponseHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final convertedBody = response.body;

        if (convertedBody == null) {
          return const RemoteResponse.noContent();
        }

        return RemoteResponse.withNewData(
          AppPolicyDTO.fromJson(convertedBody),
          nextAvailable: false,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
