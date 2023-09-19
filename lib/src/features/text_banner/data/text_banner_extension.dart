import 'package:classic_shop/src/features/text_banner/data/text_banner_dto.dart';
import 'package:classic_shop/src/features/text_banner/domain/text_banner.dart';

extension DTOListToDomainList on List<TextBannerDTO> {
  List<TextBanner> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
