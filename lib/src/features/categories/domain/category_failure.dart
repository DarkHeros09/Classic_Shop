import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_failure.freezed.dart';

@freezed
class CategoryFailure with _$CategoryFailure {
  const CategoryFailure._();
  // const factory CategoryFailure.api(int? errorCode) = _Api;
  const factory CategoryFailure.api(int? errorCode) = _Api;
  // const factory CategoryFailure.storage() = _Storage;
}
