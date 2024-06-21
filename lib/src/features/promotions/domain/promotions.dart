import 'package:classic_shop/src/features/promotions/domain/brand_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/category_promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/combined_promotion.dart';
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
  const Promotions._();

  List<CombinedPromotions> toCombinedList() {
    final combinedList = <CombinedPromotions>[];
    final ppList =
        productPromotions?.map((e) => e.toCombinedPromotions()).toList() ?? [];
    combinedList.addAll(ppList);
    final bpList =
        brandPromotions?.map((e) => e.toCombinedPromotions()).toList() ?? [];
    combinedList.addAll(bpList);
    final cpList =
        categoryPromotions?.map((e) => e.toCombinedPromotions()).toList() ?? [];
    combinedList
      ..addAll(cpList)
      ..sort(
        (a, b) => b.startDate?.compareTo(a.startDate ?? DateTime(0)) ?? 0,
      );

    return combinedList;
  }
}
