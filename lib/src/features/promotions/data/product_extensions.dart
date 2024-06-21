import 'package:classic_shop/src/features/promotions/data/brand_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/category_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/product_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/domain/brand_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/category_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/product_promotions.dart';

extension ProductPromotionsDTOListToDomainList on List<ProductPromotionsDTO> {
  List<ProductPromotions> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

extension BrandPromotionsDTOListToDomainList on List<BrandPromotionsDTO> {
  List<BrandPromotions> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

extension CategoryPromotionsDTOListToDomainList on List<CategoryPromotionsDTO> {
  List<CategoryPromotions> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
