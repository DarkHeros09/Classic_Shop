import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type_failure.freezed.dart';

@freezed
class PaymentTypeFailure with _$PaymentTypeFailure {
  const PaymentTypeFailure._();
  const factory PaymentTypeFailure.server([String? message]) = _Server;
}
