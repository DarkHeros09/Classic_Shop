import 'package:classic_shop/src/features/brands/data/brand_dto.dart';
import 'package:classic_shop/src/features/brands/domain/brand.dart';

extension DTOListToDomainList on List<BrandDTO> {
  List<Brand> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
