import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required final int userId,
    required final int? id,
    required final int? defaultAddress,
    required final String addressLine,
    required final String region,
    required final String city,
  }) = _Address;
  const Address._();
}
