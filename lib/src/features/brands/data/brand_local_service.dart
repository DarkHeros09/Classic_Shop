import 'package:classic_shop/src/features/brands/data/brand_dto.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:sembast/sembast.dart';

abstract class IBrandLocalService {
  Future<List<BrandDTO>> fetchBrand();

  Future<void> setBrand(List<BrandDTO> brandsDTO);

  // Future<BrandDTO?> getBrand(int brandId);

  // Future<void> updateBrand(BrandDTO dto);

  Future<void> deleteBrand(int brandId);

  Future<void> deleteAllBrands();
}

class BrandLocalService implements IBrandLocalService {
  BrandLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('brands');

  // static const brandsKey = 'brands';

  @override
  Future<List<BrandDTO>> fetchBrand() async {
    final records = await _store.find(_sembastDatabase.instance);
    return records.map((e) => BrandDTO.fromJson(e.value)).toList();
  }

  @override
  Future<void> setBrand(List<BrandDTO> dto) {
    _store.drop(_sembastDatabase.instance);
    return _store.addAll(
      _sembastDatabase.instance,
      dto.map((e) => e.toJson()).toList(),
    );
  }

  // @override
  // Future<BrandDTO?> getBrand(int brandId) async {
  //   final record =
  //       await _store.record(brandId).get(_sembastDatabase.instance);

  //   if (record != null) {
  //     return BrandDTO.fromJson(record);
  //   }
  //   return null;
  // }

  // @override
  // Future<void> updateBrand(BrandDTO dto) async {
  //   await _store.record(dto.id).update(_sembastDatabase.instance, dto.toJson());
  // }

  @override
  Future<void> deleteBrand(int brandId) async {
    await _store.record(brandId).delete(_sembastDatabase.instance);
  }

  @override
  Future<void> deleteAllBrands() async {
    await _store.drop(_sembastDatabase.instance);
  }
}
