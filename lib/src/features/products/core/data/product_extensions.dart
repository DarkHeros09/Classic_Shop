import 'package:classic_shop/src/features/products/core/data/product_dto.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';

extension DTOListToDomainList on List<ProductDTO> {
  List<Product> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
