import 'package:classic_shop/src/features/address/data/address_api.dart';
import 'package:classic_shop/src/features/address/data/address_local_service.dart';
import 'package:classic_shop/src/features/address/data/address_remote_service.dart';
import 'package:classic_shop/src/features/address/data/address_repository.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
AddressLocalService addressLocalService(Ref ref) {
  return AddressLocalService(
    ref.watch(sembastDatabaseProvider),
  );
}

@Riverpod(keepAlive: true)
AddressApi addressApi(Ref ref) {
  return AddressApi.create(ref);
}

@Riverpod(keepAlive: true)
AddressRemoteService addressRemoteService(Ref ref) {
  return AddressRemoteService(
    ref.watch(addressApiProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

@Riverpod(keepAlive: true)
AddressRepository addressRepository(Ref ref) {
  return AddressRepository(
    ref.watch(addressLocalServiceProvider),
    ref.watch(addressRemoteServiceProvider),
    ref.watch(responseHeaderCacheProvider),
  );
}

//////////////* Presentation providera //////////////

@Riverpod(keepAlive: true, dependencies: [])
int addressesIndex(Ref ref) {
  throw UnimplementedError();
}

class AddressesLength {
  const AddressesLength(this.length);
  final int length;
}

@Riverpod(keepAlive: true)
class AddressPreviousLengthForLoadingNotifier
    extends _$AddressPreviousLengthForLoadingNotifier {
  @override
  AddressesLength build() {
    return const AddressesLength(0);
  }

  void setLength(int length) {
    state = AddressesLength(length);
  }
}

@riverpod
GlobalKey<FormBuilderState> formKey(Ref ref) {
  return GlobalKey<FormBuilderState>();
}
