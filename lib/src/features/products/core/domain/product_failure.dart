import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const ProductFailure._();
  const factory ProductFailure.api(int? errorCode) = _Api;
}
