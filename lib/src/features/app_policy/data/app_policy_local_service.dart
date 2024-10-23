import 'package:classic_shop/src/features/app_policy/data/app_policy_dto.dart';
import 'package:classic_shop/src/features/core/data/sembast_database.dart';
import 'package:sembast/sembast.dart';

abstract class IAppPolicyLocalService {
  Future<AppPolicyDTO?> fetchAppPolicy();

  Future<void> setAppPolicy(AppPolicyDTO appPolicyDTO);

  Future<void> updateAppPolicy(AppPolicyDTO dto);

  Future<void> deleteAppPolicy();
}

class AppPolicyLocalService implements IAppPolicyLocalService {
  AppPolicyLocalService(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;

  @override
  Future<AppPolicyDTO?> fetchAppPolicy() async {
    final store = intMapStoreFactory.store('appPolicy');
    final records = await store.findFirst(_sembastDatabase.instance);
    if (records != null) {
      return AppPolicyDTO.fromJson(records.value);
    }
    return null;
  }

  @override
  Future<void> setAppPolicy(AppPolicyDTO dto) {
    final store = intMapStoreFactory.store('appPolicy');
    return store.record(dto.id).put(
          _sembastDatabase.instance,
          dto.toJson(),
        );
  }

  @override
  Future<void> updateAppPolicy(AppPolicyDTO dto) async {
    final store = intMapStoreFactory.store('appPolicy');
    await store.record(dto.id).update(_sembastDatabase.instance, dto.toJson());
  }

  @override
  Future<void> deleteAppPolicy() async {
    final store = intMapStoreFactory.store('appPolicy');
    await store.delete(_sembastDatabase.instance);
  }
}
