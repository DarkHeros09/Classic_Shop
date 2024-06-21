import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required int id,
    required String brandName,
    required String brandImage,
  }) = _Brand;
}
