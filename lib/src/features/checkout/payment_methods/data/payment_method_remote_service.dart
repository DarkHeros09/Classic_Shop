import 'dart:io';

import 'package:classic_shop/src/features/checkout/payment_methods/data/payment_method_api.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/data/payment_method_dto.dart';
import 'package:classic_shop/src/features/checkout/payment_methods/domain/payment_method_failure.dart';
import 'package:classic_shop/src/features/core/data/network_exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class PaymentMethodRemoteService {
  PaymentMethodRemoteService(this._paymentMethodApi);

  final PaymentMethodApi _paymentMethodApi;

  Future<Either<PaymentMethodFailure, PaymentMethodDTO?>> createPaymentMethod({
    required int userId,
    required int paymentTypeId,
    required String provider,
  }) async {
    try {
      final response = await _paymentMethodApi.createPaymentMethod(
        userId: userId.toString(),
        data: {
          'payment_type_id': paymentTypeId,
          'provider': provider,
        },
      );
      if (response.isSuccessful) {
        final body = response.body;

        if (body != null) {
          final paymentMethodDto = PaymentMethodDTO.fromJson(body);
          return right(paymentMethodDto);
        }
      }
      if (!response.isSuccessful) {
        return left(
          PaymentMethodFailure.server(
            RestApiException(response.statusCode).toString(),
          ),
        );
      }
      return left(const PaymentMethodFailure.server());
    } on SocketException {
      throw const RestApiException();
    }
  }

  Future<Either<PaymentMethodFailure, PaymentMethodDTO?>> getPaymentMethod({
    required int userId,
    // required int paymentMethodId,
    required int paymentTypeId,
  }) async {
    try {
      final response = await _paymentMethodApi.getPaymentMethod(
        userId: userId.toString(),
        // paymentMethodId: paymentMethodId.toString(),
        data: {
          'payment_type_id': paymentTypeId,
        },
      );

      if (response.isSuccessful) {
        debugPrint('SUCCCC');
        final body = response.body;

        if (body != null) {
          final paymentMethodDto = PaymentMethodDTO.fromJson(body);
          return right(paymentMethodDto);
        }
      }
      if (!response.isSuccessful) {
        debugPrint('FAILLL ${response.statusCode}');
        return left(
          PaymentMethodFailure.server(
            RestApiException(response.statusCode).toString(),
          ),
        );
      }
      return left(const PaymentMethodFailure.server());
    } on SocketException {
      throw const RestApiException();
    }
  }
}
