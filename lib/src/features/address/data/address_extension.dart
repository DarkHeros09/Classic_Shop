import 'package:classic_shop/src/features/address/data/address_dto.dart';
import 'package:classic_shop/src/features/address/domain/address.dart';

extension DTOListToDomainList on List<AddressDTO> {
  List<Address> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
