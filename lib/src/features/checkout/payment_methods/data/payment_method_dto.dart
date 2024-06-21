import 'package:classic_shop/src/features/checkout/payment_methods/domain/payment_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_dto.freezed.dart';
part 'payment_method_dto.g.dart';

@freezed
class PaymentMethodDTO with _$PaymentMethodDTO {
  const factory PaymentMethodDTO({
    required final int id,
    required final int paymentTypeId,
    required final String provider,
  }) = _PaymentMethodDTO;
  const PaymentMethodDTO._();

  factory PaymentMethodDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDTOFromJson(json);

  factory PaymentMethodDTO.fromDomain(PaymentMethod _) {
    return PaymentMethodDTO(
      id: _.id,
      paymentTypeId: _.paymentTypeId,
      provider: _.provider,
    );
  }

  PaymentMethod toDomain() {
    return PaymentMethod(
      id: id,
      paymentTypeId: paymentTypeId,
      provider: provider,
    );
  }
}
