import 'package:classic_shop/src/features/brands/domain/brand.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_dto.freezed.dart';
part 'brand_dto.g.dart';

@freezed
class BrandDTO with _$BrandDTO {
  const factory BrandDTO({
    required int id,
    required String brandName,
    required String brandImage,
  }) = _BrandDTO;
  const BrandDTO._();

  factory BrandDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandDTOFromJson(json);

  factory BrandDTO.fromDomain(Brand _) {
    return BrandDTO(
      id: _.id,
      brandName: _.brandName,
      brandImage: _.brandImage,
    );
  }

  Brand toDomain() {
    return Brand(
      id: id,
      brandName: brandName,
      brandImage: brandImage,
    );
  }
}
