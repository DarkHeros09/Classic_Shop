import 'package:classic_shop/src/features/size/domain/size.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'size_dto.freezed.dart';
part 'size_dto.g.dart';

@freezed
class SizeDTO with _$SizeDTO {
  const factory SizeDTO({
    required int id,
    required int productItemId,
    required String sizeValue,
    required int qty,
  }) = _SizeDTO;
  const SizeDTO._();
  factory SizeDTO.fromJson(Map<String, dynamic> json) =>
      _$SizeDTOFromJson(json);

  factory SizeDTO.fromDomain(SizeModel _) {
    return SizeDTO(
      id: _.id,
      productItemId: _.productItemId,
      sizeValue: _.sizeValue,
      qty: _.qty,
    );
  }

  SizeModel toDomain() {
    return SizeModel(
      id: id,
      productItemId: productItemId,
      sizeValue: sizeValue,
      qty: qty,
    );
  }
}
