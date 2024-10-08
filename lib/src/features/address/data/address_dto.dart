import 'package:classic_shop/src/features/address/domain/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDTO with _$AddressDTO {
  const factory AddressDTO({
    required final int userId,
    @JsonKey(name: 'address_id') required final int? id,
    required final int? defaultAddress,
    required final String name,
    required final String addressLine,
    required final String region,
    required final String city,
  }) = _AddressDTO;
  const AddressDTO._();

  factory AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$AddressDTOFromJson(json);

  factory AddressDTO.fromDomain(Address _) {
    return AddressDTO(
      userId: _.userId,
      id: _.id,
      defaultAddress: _.defaultAddress,
      name: _.name,
      addressLine: _.addressLine,
      region: _.region,
      city: _.city,
    );
  }

  Address toDomain() {
    return Address(
      userId: userId,
      id: id,
      defaultAddress: defaultAddress,
      name: name,
      addressLine: addressLine,
      region: region,
      city: city,
    );
  }
}
