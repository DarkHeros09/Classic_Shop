import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/size/data/size_extension.dart';
import 'package:classic_shop/src/features/size/data/size_remote_service.dart';
import 'package:classic_shop/src/features/size/domain/size.dart';
import 'package:classic_shop/src/features/size/domain/size_failure.dart';
import 'package:dartz/dartz.dart';

class SizeRepository {
  SizeRepository(
    // this._localService,
    this._remoteService,
  );

  // final SizeLocalService _localService;
  final SizeRemoteService _remoteService;

  Future<Either<SizeFailure, Fresh<List<SizeModel>>>> listSizesByProductItemId({
    required int productItemId,
  }) async {
    try {
      // final requestUri = Uri.http(
      //   Env.httpAddress,
      //   '/api/v1/sizes/$productItemId',
      // );
      final sizes = await _remoteService.listSizesByProductItemId(
        // requestUri: requestUri,
        productItemId: productItemId,
      );

      return right(
        await sizes.when(
          noConnection: () async => Fresh.no(
            // await _localService.fetchSize().then((_) => _.toDomain()),
            [],
          ),
          noContent: () async {
            // await _localService.deleteAllSizes();
            return Fresh.no([], isNextPageAvailable: false);
          },
          notModified: (_) async => Fresh.yes(
            // await _localService.fetchSize().then((_) => _.toDomain()),
            [],
          ),
          withNewData: (data, _) async {
            // await _localService.setSize(data);
            return Fresh.yes(data.toDomain());
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(SizeFailure.api(e.errorCode));
    } on Exception catch (_) {
      rethrow;
    }
  }
}
