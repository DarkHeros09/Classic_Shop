import 'package:classic_shop/src/features/checkout/delivery_method/data/delivery_method_dto.dart';
import 'package:classic_shop/src/features/checkout/delivery_method/domain/delivery_method.dart';

extension DTOListToDomainList on List<DeliveryMethodDTO> {
  List<DeliveryMethod> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
