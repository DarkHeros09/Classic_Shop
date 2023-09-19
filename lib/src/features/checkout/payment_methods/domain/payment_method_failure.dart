import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_failure.freezed.dart';

@freezed
class PaymentMethodFailure with _$PaymentMethodFailure {
  const PaymentMethodFailure._();
  const factory PaymentMethodFailure.server([String? message]) = _Server;
}
