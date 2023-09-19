import 'dart:io';

import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_api.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';

class DeliveryMethodRemoteService {
  DeliveryMethodRemoteService(this._deliveryMethodApi);

  final DeliveryMethodApi _deliveryMethodApi;

  Future<List<DeliveryMethodDTO>?> listDeliveryMethods({
    required int userId,
  }) async {
    try {
      final response = await _deliveryMethodApi.listDeliveryMethods(
        userId: userId.toString(),
      );

      if (response.isSuccessful) {
        final convertedBody =
            response.body?.map(DeliveryMethodDTO.fromJson).toList();
        return convertedBody;
      }
      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }
      return null;
    } on SocketException {
      throw const RestApiException();
    }
  }
}
