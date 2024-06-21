import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status.freezed.dart';

@freezed
class OrderStatus with _$OrderStatus {
  const factory OrderStatus({
    required final int id,
    required final String status,
  }) = _OrderStatus;
  const OrderStatus._();
}
