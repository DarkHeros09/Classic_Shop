import 'dart:io';

import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_api.dart';
import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_dto.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';

class PaymentTypeRemoteService {
  PaymentTypeRemoteService(this._paymentTypeApi);

  final PaymentTypeApi _paymentTypeApi;

  Future<List<PaymentTypeDTO>?> listPaymentTypes({
    required int userId,
  }) async {
    try {
      final response =
          await _paymentTypeApi.listPaymentTypes(userId: userId.toString());

      if (response.isSuccessful) {
        final convertedBody =
            response.body?.map(PaymentTypeDTO.fromJson).toList();
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
