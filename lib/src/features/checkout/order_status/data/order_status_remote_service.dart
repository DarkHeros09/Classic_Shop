import 'dart:io';

import 'package:classic_shop/src/features/checkout/order_status/data/order_status_api.dart';
import 'package:classic_shop/src/features/checkout/order_status/data/order_status_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';

class OrderStatusRemoteService {
  OrderStatusRemoteService(this._deliveryMethodApi);

  final OrderStatusApi _deliveryMethodApi;

  Future<OrderStatusDTO> getOrderStatus({
    required int userId,
    required int statusId,
  }) async {
    try {
      final response = await _deliveryMethodApi.getOrderStatus(
        userId: userId.toString(),
        statusId: statusId.toString(),
      );

      if (!response.isSuccessful) {
        throw RestApiException(response.statusCode);
      }

      final body = response.body;
      if (body == null) {
        throw const RestApiException();
      }

      return OrderStatusDTO.fromJson(body);
    } on SocketException {
      throw const RestApiException();
    }
  }
}
