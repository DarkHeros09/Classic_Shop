import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type.freezed.dart';

@freezed
class PaymentType with _$PaymentType {
  const factory PaymentType({
    required final int id,
    required final String value,
    required final bool isActive,
  }) = _PaymentType;
  const PaymentType._();
}
