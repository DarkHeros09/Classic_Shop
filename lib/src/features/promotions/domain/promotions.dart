import 'package:classic_shop/src/features/promotions/domain/brand_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/category_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/product_promotions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotions.freezed.dart';

@freezed
class Promotions with _$Promotions {
  const factory Promotions({
    required List<ProductPromotions>? productPromotions,
    required List<BrandPromotions>? brandPromotions,
    required List<CategoryPromotions>? categoryPromotions,
  }) = _Promotions;
}
