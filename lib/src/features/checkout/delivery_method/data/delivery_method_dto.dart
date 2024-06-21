import 'package:classic_shop/src/features/checkout/delivery_method/domain/delivery_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_method_dto.freezed.dart';
part 'delivery_method_dto.g.dart';

@freezed
class DeliveryMethodDTO with _$DeliveryMethodDTO {
  const factory DeliveryMethodDTO({
    required final int id,
    required final String name,
    required final String price,
  }) = _DeliveryMethodDTO;
  const DeliveryMethodDTO._();

  factory DeliveryMethodDTO.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMethodDTOFromJson(json);

  factory DeliveryMethodDTO.fromDomain(DeliveryMethod _) {
    return DeliveryMethodDTO(
      id: _.id,
      name: _.name,
      price: _.price,
    );
  }

  DeliveryMethod toDomain() {
    return DeliveryMethod(
      id: id,
      name: name,
      price: price,
    );
  }
}
