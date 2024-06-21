import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_method_failure.freezed.dart';

@freezed
class DeliveryMethodFailure with _$DeliveryMethodFailure {
  const DeliveryMethodFailure._();
  const factory DeliveryMethodFailure.server([String? message]) = _Server;
}
