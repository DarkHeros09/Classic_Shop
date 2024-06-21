import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required int? parentCategoryId,
    required String categoryName,
    required String categoryImage,
  }) = _Category;
}
