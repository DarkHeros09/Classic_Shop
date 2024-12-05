import 'package:freezed_annotation/freezed_annotation.dart';

part 'size.freezed.dart';

@freezed
class SizeModel with _$SizeModel {
  const factory SizeModel({
    required int id,
    required int productItemId,
    required String sizeValue,
    required int qty,
  }) = _SizeModel;
}
