import 'package:classic_shop/src/features/checkout/order_status/domain/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status_dto.freezed.dart';
part 'order_status_dto.g.dart';

@freezed
class OrderStatusDTO with _$OrderStatusDTO {
  const factory OrderStatusDTO({
    required final int id,
    required final String status,
  }) = _OrderStatusDTO;
  const OrderStatusDTO._();

  factory OrderStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusDTOFromJson(json);

  factory OrderStatusDTO.fromDomain(OrderStatus _) {
    return OrderStatusDTO(
      id: _.id,
      status: _.status,
    );
  }

  OrderStatus toDomain() {
    return OrderStatus(
      id: id,
      status: status,
    );
  }
}
