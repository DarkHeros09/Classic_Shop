import 'package:classic_shop/src/features/checkout/payment_types/domain/payment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type_dto.freezed.dart';
part 'payment_type_dto.g.dart';

@freezed
class PaymentTypeDTO with _$PaymentTypeDTO {
  const factory PaymentTypeDTO({
    required final int id,
    required final String value,
    required final bool isActive,
  }) = _PaymentTypeDTO;
  const PaymentTypeDTO._();

  factory PaymentTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentTypeDTOFromJson(json);

  factory PaymentTypeDTO.fromDomain(PaymentType _) {
    return PaymentTypeDTO(
      id: _.id,
      value: _.value,
      isActive: _.isActive,
    );
  }

  PaymentType toDomain() {
    return PaymentType(
      id: id,
      value: value,
      isActive: isActive,
    );
  }
}
