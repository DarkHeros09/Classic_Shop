import 'dart:io';

import 'package:classic_shop/src/features/checkout/core/data/checkout_api.dart';
import 'package:classic_shop/src/features/checkout/core/domain/checkout_failure.dart';
import 'package:dartz/dartz.dart';

class CheckoutRemoteService {
  CheckoutRemoteService(this._checkoutApi);

  final CheckoutApi _checkoutApi;

  Future<Either<CheckoutFailure, Unit>> checkout({
    required int userId,
    required int cartId,
    required int userAddressId,
    required int paymentTypeId,
    required int shippingMethodId,
    required int orderStatusId,
    required num orderTotal,
  }) async {
    try {
      final response = await _checkoutApi.checkout(
        userId: userId.toString(),
        cartId: cartId.toString(),
        data: {
          'user_address_id': userAddressId,
          'payment_type_id': paymentTypeId,
          'shipping_method_id': shippingMethodId,
          'order_status_id': orderStatusId,
          'order_total': orderTotal.toStringAsFixed(2),
        },
      );

      if (!response.isSuccessful) {
        return left(CheckoutFailure.server(response.bodyString));
      }
      return right(unit);
    } on SocketException catch (e) {
      return left(CheckoutFailure.server(e.message));
    }
  }
}
