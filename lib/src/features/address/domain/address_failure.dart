import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_failure.freezed.dart';

@freezed
class AddressFailure with _$AddressFailure {
  const AddressFailure._();
  const factory AddressFailure.api(int? errorCode) = _Api;
}
