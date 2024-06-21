import 'package:classic_shop/src/features/categories/domain/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDTO with _$CategoryDTO {
  const factory CategoryDTO({
    required int id,
    required int? parentCategoryId,
    required String categoryName,
    required String categoryImage,
  }) = _CategoryDTO;
  const CategoryDTO._();

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);

  factory CategoryDTO.fromDomain(Category _) {
    return CategoryDTO(
      id: _.id,
      parentCategoryId: _.parentCategoryId,
      categoryName: _.categoryName,
      categoryImage: _.categoryImage,
    );
  }

  Category toDomain() {
    return Category(
      id: id,
      parentCategoryId: parentCategoryId,
      categoryName: categoryName,
      categoryImage: categoryImage,
    );
  }
}
