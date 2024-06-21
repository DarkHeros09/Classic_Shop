import 'package:classic_shop/src/features/text_banner/domain/text_banner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_banner_dto.freezed.dart';
part 'text_banner_dto.g.dart';

@freezed
class TextBannerDTO with _$TextBannerDTO {
  const factory TextBannerDTO({
    required int id,
    required String name,
    required String description,
  }) = _TextBannerDTO;
  const TextBannerDTO._();

  factory TextBannerDTO.fromJson(Map<String, dynamic> json) =>
      _$TextBannerDTOFromJson(json);

  factory TextBannerDTO.fromDomain(TextBanner _) {
    return TextBannerDTO(
      id: _.id,
      name: _.name,
      description: _.description,
    );
  }

  TextBanner toDomain() {
    return TextBanner(
      id: id,
      name: name,
      description: description,
    );
  }
}
