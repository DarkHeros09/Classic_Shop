import 'package:classic_shop/src/features/checkout/payment_types/data/payment_type_dto.dart';
import 'package:classic_shop/src/features/checkout/payment_types/domain/payment_type.dart';

extension DTOListToDomainList on List<PaymentTypeDTO> {
  List<PaymentType> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
