import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_extension.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_local_service.dart';
import 'package:classic_shop/src/features/text_banner/data/text_banner_remote_service.dart';
import 'package:classic_shop/src/features/text_banner/domain/text_banner.dart';
import 'package:classic_shop/src/features/text_banner/domain/text_banner_failure.dart';
import 'package:dartz/dartz.dart';

class TextBannerRepository {
  TextBannerRepository(
    this._localService,
    this._remoteService,
    this._headersCache,
    // this._isarService,
  );

  final TextBannerLocalService _localService;
  final TextBannerRemoteService _remoteService;
  final ResponseHeadersCache _headersCache;
  // final TextBannerIsarService _isarService;

  Future<Either<TextBannerFailure, Fresh<List<TextBanner>>>>
      fetchTextBanner() async {
    try {
      final requestUri = Uri.http(
        Env.httpAddress,
        '/api/v1/wish-lists',
      );
      final textBanner = await _remoteService.fetchTextBanner(
        requestUri: requestUri,
      );

      return right(
        await textBanner.when(
          noConnection: () async => Fresh.no(
            await _localService.fetchTextBanner().then((_) => _.toDomain()),
          ),
          noContent: () async {
            await _localService.deleteAllTextBanners();
            return Fresh.no([], isNextPageAvailable: false);
          },
          notModified: (_) async {
            final localData =
                await _localService.fetchTextBanner().then((_) => _.toDomain());
            if (localData.isEmpty) {
              await _headersCache.deleteHeaders(requestUri);
            }
            return Fresh.yes(localData);
          },
          withNewData: (data, _) async {
            if (data.isNotEmpty) {
              for (var i = 0; i < data.length; i++) {
                await _localService.setTextBanner(data[i]);
              }
            }
            return Fresh.yes(data.toDomain());
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(TextBannerFailure.api(e.errorCode));
    } on Exception catch (_) {
      rethrow;
    }
  }
}
