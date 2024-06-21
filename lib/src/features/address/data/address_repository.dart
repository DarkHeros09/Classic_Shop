import 'package:classic_shop/gen/env.g.dart';
import 'package:classic_shop/src/features/address/data/address_dto.dart';
import 'package:classic_shop/src/features/address/data/address_extension.dart';
import 'package:classic_shop/src/features/address/data/address_local_service.dart';
import 'package:classic_shop/src/features/address/data/address_remote_service.dart';
import 'package:classic_shop/src/features/address/domain/address.dart';
import 'package:classic_shop/src/features/address/domain/address_failure.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:dartz/dartz.dart';

class AddressRepository {
  AddressRepository(
    this._localService,
    this._remoteService,
    this._headersCache,
  );

  final AddressLocalService _localService;
  final AddressRemoteService _remoteService;
  final ResponseHeadersCache _headersCache;

  Future<Either<AddressFailure, Fresh<List<Address>>>> fetchAddress(
    int userId,
  ) async {
    try {
      // final user = await _userStorage.read();

      // if (user != null) {
      final requestUri = Uri.http(
        Env.httpAddress,
        '/usr/v1/users/$userId/addresses',
      );
      final address = await _remoteService.fetchAddress(
        userId: userId,
        requestUri: requestUri,
      );

      return right(
        await address.when(
          noConnection: () async => Fresh.no(
            await _localService.fetchAddress(userId).then((_) => _.toDomain()),
          ),
          noContent: () async {
            await _localService.deleteAllAddresss(userId);
            return Fresh.no([], isNextPageAvailable: false);
          },
          notModified: (_) async {
            final localData = await _localService
                .fetchAddress(userId)
                .then((_) => _.toDomain());
            if (localData.isEmpty) {
              await _headersCache.deleteHeaders(requestUri);
            }
            return Fresh.yes(localData);
          },
          withNewData: (data, _) async {
            final localAddresses = await _localService.fetchAddress(userId);
            if (localAddresses.isNotEmpty) {
              // final addressesToRemoveFromRemote = data
              //     .where((adderss) => !localAddresses.contains(adderss))
              //     .toList();
              final addressesToRemoveFromLocal = localAddresses
                  .where(
                    (adderss) => !data.map((e) => e.id).contains(adderss.id),
                  )
                  .toList();

              // for (var i = 0; i < addressesToRemoveFromRemote.length; i++) {
              //   await _remoteService.deleteAddress(
              //     userId: userId,
              //     addressId: addressesToRemoveFromRemote[i].id ?? 0,
              //   );
              // }
              if (addressesToRemoveFromLocal.isNotEmpty) {
                for (var i = 0; i < addressesToRemoveFromLocal.length; i++) {
                  await _localService.deleteAddress(
                    addressesToRemoveFromLocal[i].id ?? 0,
                    userId,
                  );
                }
              }
              // data.removeWhere(addressesToRemoveFromRemote.contains);
              // // ..map((e) async => _localService.setAddress(e));
              // return Fresh.yes(data.toDomain());
            }
            if (data.isNotEmpty) {
              for (var i = 0; i < data.length; i++) {
                await _localService.setAddress(data[i]);
              }
            }
            return Fresh.yes(data.toDomain());
          },
        ),
      );
      // }

      // final address = await _localService.fetchAddress(userId);
      // return right(
      //   Fresh.no(address.toDomain()),
      // );
      // return right(Fresh.no([]));
    } on RestApiException catch (e) {
      return left(AddressFailure.api(e.errorCode));
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<Either<AddressFailure, AddressDTO>> createAddress({
    required AddressDTO dto,
    required int userId,
  }) async {
    // final user = await _userStorage.read();

    // if (user != null) {
    try {
      final address = await _remoteService.createAddress(
        userId: userId,
        addressLine: dto.addressLine,
        region: dto.region,
        city: dto.city,
      );

      return right(
        await address.maybeWhen(
          withNewData: (data, maxPage) async {
            final completedDTO = dto.copyWith(
              id: data.id,
              defaultAddress: data.defaultAddress,
              city: data.city,
              region: data.region,
              addressLine: data.addressLine,
            );
            final address = await _localService.setAddress(completedDTO);
            return address;
          },
          orElse: () => dto,
        ),
      );
    } on RestApiException catch (e) {
      return left(AddressFailure.api(e.errorCode));
    }
    // } else {
    //   // final add = await _localService.setAddress(dto, userId);
    //   // return right(add!);
    //   return right(null);
    // }
  }

  Future<Either<AddressFailure, Address>> updateAddress(
    AddressDTO dto,
    int userId,
  ) async {
    // final user = await _userStorage.read();

    // if (user != null) {
    try {
      final address = await _remoteService.updateAddress(
        userId: userId,
        addressId: dto.id ?? 0,
        defaultAddress: dto.defaultAddress.toString(),
        city: dto.city,
        region: dto.region,
        addressLine: dto.addressLine,
      );

      return right(
        await address.maybeWhen(
          withNewData: (data, maxPage) async {
            final updatedDTO = dto.copyWith(
              id: data.id,
              defaultAddress: data.defaultAddress,
              city: data.city,
              region: data.region,
              addressLine: data.addressLine,
            );
            await _localService.updateAddress(updatedDTO);
            return updatedDTO.toDomain();
          },
          orElse: () async {
            return dto.toDomain();
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(AddressFailure.api(e.errorCode));
    }
  }
  // await _localService.updateAddress(dto);
  // return right(dto.toDomain());
  // return right(null);

  Future<bool> deleteAddress(int addressId, int userId) async {
    // final user = await _userStorage.read();

    // if (user != null) {
    final response = await _remoteService.deleteAddress(
      userId: userId,
      addressId: addressId,
    );
    return response.maybeWhen(
      withNewData: (data, maxPage) {
        _localService.deleteAddress(addressId, userId);
        return data;
      },
      orElse: () => false,
    );
    // }
    // return false;
  }
}
