import 'package:classic_shop/src/features/address/application/address_notifier.dart';
import 'package:classic_shop/src/features/address/data/address_api.dart';
import 'package:classic_shop/src/features/address/data/address_local_service.dart';
import 'package:classic_shop/src/features/address/data/address_remote_service.dart';
import 'package:classic_shop/src/features/address/data/address_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addressLocalServiceProvider = Provider<AddressLocalService>((ref) {
  return AddressLocalService(
    ref.watch(sembastProvider),
  );
});

final addressApiProvider = Provider<AddressApi>(AddressApi.create);

final addressRemoteServiceProvider = Provider<AddressRemoteService>((ref) {
  return AddressRemoteService(
    ref.watch(addressApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final addressRepositoryProvider = Provider<AddressRepository>((ref) {
  return AddressRepository(
    ref.watch(addressLocalServiceProvider),
    ref.watch(addressRemoteServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
});

final addressNotifierProvider =
    NotifierProvider.autoDispose<AddressNotifier, AddressState>(
  AddressNotifier.new,
);
