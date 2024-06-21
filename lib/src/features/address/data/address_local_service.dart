import 'package:classic_shop/src/features/address/data/address_dto.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:flutter/foundation.dart';
import 'package:sembast/sembast.dart';

abstract class IAddressLocalService {
  Future<List<AddressDTO>> fetchAddress(int userId);

  Future<AddressDTO> setAddress(AddressDTO dto);

  Future<AddressDTO?> getAddress(int addressId, int userId);

  Future<void> updateAddress(AddressDTO dto);

  Future<void> deleteAddress(int addressId, int userId);

  Future<void> deleteAllAddresss(int userId);
}

class AddressLocalService implements IAddressLocalService {
  AddressLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;

  @override
  Future<List<AddressDTO>> fetchAddress(int userId) async {
    final store = intMapStoreFactory.store('$userId:userAddress');
    final records = await store.find(_sembastDatabase.instance);
    final res = records.map((e) => AddressDTO.fromJson(e.value)).toList();
    debugPrint('resultADD: $res');
    return res;
  }

  @override
  Future<AddressDTO> setAddress(AddressDTO dto) async {
    final store = intMapStoreFactory.store('${dto.userId}:userAddress');
    final saved = await store.record(dto.id!).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
    debugPrint('resultADD:SAVE $saved');
    return dto;
  }

  @override
  Future<AddressDTO?> getAddress(int addressId, int userId) async {
    final store = intMapStoreFactory.store('$userId:userAddress');
    final record = await store.record(addressId).get(_sembastDatabase.instance);

    if (record != null) {
      return AddressDTO.fromJson(record);
    }
    return null;
  }

  @override
  Future<void> updateAddress(AddressDTO dto) async {
    final store = intMapStoreFactory.store('${dto.userId}:userAddress');
    if (dto.id != null) {
      await store
          .record(dto.id!)
          .update(_sembastDatabase.instance, dto.toJson());
    }
  }

  @override
  Future<void> deleteAddress(int addressId, int userId) async {
    final store = intMapStoreFactory.store('$userId:userAddress');
    await store.record(addressId).delete(_sembastDatabase.instance);
  }

  @override
  Future<void> deleteAllAddresss(int userId) async {
    final store = intMapStoreFactory.store('$userId:userAddress');
    await store.drop(_sembastDatabase.instance);
  }
}
