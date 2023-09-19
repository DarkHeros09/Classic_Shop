import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    required final int id,
    required final int paymentTypeId,
    required final String provider,
  }) = _PaymentMethod;
  const PaymentMethod._();
}
