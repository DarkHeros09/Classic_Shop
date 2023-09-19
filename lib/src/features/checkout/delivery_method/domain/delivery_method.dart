import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_method.freezed.dart';

@freezed
class DeliveryMethod with _$DeliveryMethod {
  const factory DeliveryMethod({
    required final int id,
    required final String name,
    required final String price,
  }) = _DeliveryMethod;
  const DeliveryMethod._();
}
