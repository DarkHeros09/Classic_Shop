import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:classic_shop/src/features/address/data/address_api.dart';
import 'package:classic_shop/src/features/address/data/address_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:classic_shop/src/features/core/data/remote_response.dart';
import 'package:classic_shop/src/features/core/data/response_headers.dart';
import 'package:classic_shop/src/features/core/data/response_headers_cache.dart';

abstract class IAddressRemoteService {
  Future<RemoteResponse<List<AddressDTO>>> fetchAddress({
    required int userId,
    required Uri requestUri,
  });

  Future<RemoteResponse<AddressDTO>> createAddress({
    required int userId,
    required String addressLine,
    required String region,
    required String city,
  });

  Future<RemoteResponse<AddressDTO>> updateAddress({
    required int userId,
    required int addressId,
    required String addressLine,
    required String region,
    required String city,
    required String defaultAddress,
  });

  Future<RemoteResponse<bool>> deleteAddress({
    required int userId,
    required int addressId,
  });
}

class AddressRemoteService implements IAddressRemoteService {
  AddressRemoteService(
    this._addressApi,
    this._headersCache,
  );

  final AddressApi _addressApi;
  final ResponseHeadersCache _headersCache;

  @override
  Future<RemoteResponse<List<AddressDTO>>> fetchAddress({
    required int userId,
    required Uri requestUri,
  }) async {
    final previousHeaders = await _headersCache.getHeaders(requestUri);
    try {
      late final Response<List<Map<String, dynamic>>> response;

      response = await _addressApi.listAddresses(
        ifNoneMatch: previousHeaders?.etag ?? '',
        userId: userId.toString(),
        pageId: 1,
        pageSize: 5,
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
        return RemoteResponse.withNewData(
          convertedBody?.map(AddressDTO.fromJson).toList() ?? [],
          nextAvailable: false,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<AddressDTO>> createAddress({
    required int userId,
    required String addressLine,
    required String region,
    required String city,
  }) async {
    try {
      final response = await _addressApi.createAddress(
        userId: userId.toString(),
        data: {
          'address_line': addressLine,
          'region': region,
          'city': city,
        },
      );

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }

      final addressDTO = AddressDTO.fromJson(body);

      return RemoteResponse.withNewData(addressDTO, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<AddressDTO>> updateAddress({
    required int userId,
    required int addressId,
    required String? addressLine,
    required String? region,
    required String? city,
    required String? defaultAddress,
  }) async {
    try {
      final response = await _addressApi.updateAddress(
        userId: userId.toString(),
        addressId: addressId.toString(),
        data: {
          'address_line': addressLine,
          'region': region,
          'city': city,
          'default_address': int.tryParse(defaultAddress ?? ''),
        },
      );
      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }

      final shopCartItemDTO = AddressDTO.fromJson(body);

      return RemoteResponse.withNewData(shopCartItemDTO, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }

  @override
  Future<RemoteResponse<bool>> deleteAddress({
    required int userId,
    required int addressId,
  }) async {
    try {
      final response = await _addressApi.deleteAddress(
        userId: userId.toString(),
        addressId: addressId.toString(),
      );

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;

      if (body == null) {
        throw const RestApiException();
      }
      return const RemoteResponse.withNewData(true, nextAvailable: false);
    } on SocketException {
      return const RemoteResponse.noConnection();
    }
  }
}
