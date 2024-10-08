import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.freezed.dart';

@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    required int? promoId,
    required String? promoName,
    required String? promoDescription,
    required int? promoDiscountRate,
    required bool? promoActive,
    required DateTime? promoStartDate,
    required DateTime? promoEndDate,
  }) = _Promotion;
  const Promotion._();
}
