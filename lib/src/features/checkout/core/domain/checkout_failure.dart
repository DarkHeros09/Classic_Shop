import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_failure.freezed.dart';

@freezed
class CheckoutFailure with _$CheckoutFailure {
  const CheckoutFailure._();
  const factory CheckoutFailure.server([String? message]) = __Server;
}
