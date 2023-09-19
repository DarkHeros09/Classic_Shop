import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:classic_shop/src/features/promotions/data/brand_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/category_promotions_dto.dart';
import 'package:classic_shop/src/features/promotions/data/product_promotions_dto.dart';
import 'package:sembast/sembast.dart';

abstract class IProductPromotionsLocalService {
  Future<List<ProductPromotionsDTO>> fetchProductPromotions();

  Future<void> setProductPromotions(List<ProductPromotionsDTO> dto);

  Future<void> deleteAllProductPromotions();
}

class ProductPromotionsLocalService implements IProductPromotionsLocalService {
  ProductPromotionsLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('product_promotions');

  // static const categoriesKey = 'categories';

  @override
  Future<List<ProductPromotionsDTO>> fetchProductPromotions() async {
    final records = await _store.find(_sembastDatabase.instance);
    return records.map((e) => ProductPromotionsDTO.fromJson(e.value)).toList();
  }

  @override
  Future<void> setProductPromotions(List<ProductPromotionsDTO> dto) {
    deleteAllProductPromotions();
    return _store.addAll(
      _sembastDatabase.instance,
      dto.map((e) => e.toJson()).toList(),
    );
  }

  @override
  Future<void> deleteAllProductPromotions() async {
    await _store.drop(_sembastDatabase.instance);
  }
}

abstract class IBrandPromotionsLocalService {
  Future<List<BrandPromotionsDTO>> fetchBrandPromotions();

  Future<void> setBrandPromotions(List<BrandPromotionsDTO> dto);

  Future<void> deleteAllBrandPromotions();
}

class BrandPromotionsLocalService implements IBrandPromotionsLocalService {
  BrandPromotionsLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('brand_promotions');

  // static const categoriesKey = 'categories';

  @override
  Future<List<BrandPromotionsDTO>> fetchBrandPromotions() async {
    final records = await _store.find(_sembastDatabase.instance);
    return records.map((e) => BrandPromotionsDTO.fromJson(e.value)).toList();
  }

  @override
  Future<void> setBrandPromotions(List<BrandPromotionsDTO> dto) {
    deleteAllBrandPromotions();
    return _store.addAll(
      _sembastDatabase.instance,
      dto.map((e) => e.toJson()).toList(),
    );
  }

  @override
  Future<void> deleteAllBrandPromotions() async {
    await _store.drop(_sembastDatabase.instance);
  }
}

abstract class ICategoryPromotionsLocalService {
  Future<List<CategoryPromotionsDTO>> fetchCategoryPromotions();

  Future<void> setCategoryPromotions(List<CategoryPromotionsDTO> dto);

  Future<void> deleteAllCategoryPromotions();
}

class CategoryPromotionsLocalService
    implements ICategoryPromotionsLocalService {
  CategoryPromotionsLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('category_promotions');

  // static const categoriesKey = 'categories';

  @override
  Future<List<CategoryPromotionsDTO>> fetchCategoryPromotions() async {
    final records = await _store.find(_sembastDatabase.instance);
    return records.map((e) => CategoryPromotionsDTO.fromJson(e.value)).toList();
  }

  @override
  Future<void> setCategoryPromotions(List<CategoryPromotionsDTO> dto) {
    deleteAllCategoryPromotions();
    return _store.addAll(
      _sembastDatabase.instance,
      dto.map((e) => e.toJson()).toList(),
    );
  }

  @override
  Future<void> deleteAllCategoryPromotions() async {
    await _store.drop(_sembastDatabase.instance);
  }
}
