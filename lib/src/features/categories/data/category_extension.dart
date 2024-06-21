import 'package:classic_shop/src/features/categories/data/category_dto.dart';
import 'package:classic_shop/src/features/categories/domain/category.dart';

extension DTOListToDomainList on List<CategoryDTO> {
  List<Category> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
