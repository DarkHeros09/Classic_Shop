import 'package:classic_shop/src/features/size/data/size_dto.dart';
import 'package:classic_shop/src/features/size/domain/size.dart';

extension DTOListToDomainList on List<SizeDTO> {
  List<SizeModel> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
