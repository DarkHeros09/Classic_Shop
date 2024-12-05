import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:classic_shop/src/features/size/data/size_dto.dart';
import 'package:sembast/sembast.dart';

abstract class ISizeLocalService {
  Future<List<SizeDTO>> fetchSize(int productItemId);

  Future<void> setSize(List<SizeDTO> sizesDTO, int productItemId);

  // Future<SizeDTO?> getSize(int sizeId);

  // Future<void> updateSize(SizeDTO dto);

  Future<void> deleteSize(int sizeId, int productItemId);

  Future<void> deleteAllSizes(int productItemId);
}

class SizeLocalService implements ISizeLocalService {
  SizeLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  // final _store = intMapStoreFactory.store('sizes');

  // static const sizesKey = 'sizes';

  @override
  Future<List<SizeDTO>> fetchSize(int productItemId) async {
    final store = intMapStoreFactory.store('$productItemId');
    final records = await store.find(_sembastDatabase.instance);
    return records
        .map((e) => SizeDTO.fromJson(e.value))
        .toList()
        .where((element) => element.productItemId == productItemId)
        .toList();
  }

  @override
  Future<void> setSize(List<SizeDTO> dto, int productItemId) {
    final store = intMapStoreFactory.store('$productItemId');
    return store
        .records(dto.map(
          (e) => e.productItemId,
        ))
        .put(
          _sembastDatabase.instance,
          dto.map((e) => e.toJson()).toList(),
        );
  }

  @override
  Future<void> deleteSize(int sizeId, int productItemId) async {
    final store = intMapStoreFactory.store('$productItemId');
    await store.record(sizeId).delete(_sembastDatabase.instance);
  }

  @override
  Future<void> deleteAllSizes(int productItemId) async {
    final store = intMapStoreFactory.store('$productItemId');
    await store.drop(_sembastDatabase.instance);
  }
}
