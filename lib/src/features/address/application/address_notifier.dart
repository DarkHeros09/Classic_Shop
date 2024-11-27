import 'package:classic_shop/src/features/address/data/address_dto.dart';
import 'package:classic_shop/src/features/address/data/address_repository.dart';
import 'package:classic_shop/src/features/address/domain/address.dart';
import 'package:classic_shop/src/features/address/domain/address_failure.dart';
import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_notifier.freezed.dart';
part 'address_notifier.g.dart';

@freezed
class AddressState with _$AddressState {
  const AddressState._();
  const factory AddressState.initial(
    Fresh<List<Address>> addresses,
  ) = _Initial;
  const factory AddressState.loadInProgress(
    Fresh<List<Address>> addresses,
  ) = _LoadInProgress;
  const factory AddressState.loadSuccess(
    Fresh<List<Address>> addresses,
  ) = _LoadSuccess;
  const factory AddressState.loadFailure(
    Fresh<List<Address>> addresses,
    AddressFailure failure,
  ) = _LoadFailure;
}

@riverpod
class AddressNotifier extends _$AddressNotifier {
  late final AddressRepository _repository;
  @override
  AddressState build() {
    _repository = ref.watch(addressRepositoryProvider);
    return state = AddressState.initial(Fresh.yes([]));
  }

  Future<void> fetchAddress(int userId) async {
    // Maybe remove in progress
    state = AddressState.loadInProgress(state.addresses);
    final addressesOrFailure = await _repository.fetchAddress(userId);
    state = await addressesOrFailure.fold(
      (l) => AddressState.loadFailure(state.addresses, l),
      (r) async {
        // await _repository.setCart(r.entity);
        return AddressState.loadSuccess(r);
      },
    );
  }

  Future<void> createAddress(Address address, int userId) async {
    // state = AddressState.loadInProgress(state.addresses);
    final dto = AddressDTO.fromDomain(address);
    final failureOrAddress = await _repository.createAddress(
      dto: dto,
      userId: userId,
    );
    // state = AddressState.loadSuccess(state.addresses);
    state = failureOrAddress
        .fold((l) => AddressState.loadFailure(state.addresses, l), (r) {
      return AddressState.loadSuccess(
        state.addresses.copyWith(
          entity: [
            ...state.addresses.entity,
            r.toDomain(),
          ],
        ),
      );
    });
  }

  Future<void> updateAddress(Address address) async {
    // state = AddressState.loadInProgress(state.addresses);
    final dto = AddressDTO.fromDomain(address);
    final updatedOrFailure =
        await _repository.updateAddress(dto, address.userId);

    updatedOrFailure.fold(
      (l) => null,
      (r) {
        final i = state.addresses.entity.indexWhere(
          (element) => element.id == address.id,
        );
        state.addresses.entity[i] = r;
        state = AddressState.loadSuccess(state.addresses);
      },
    );
  }

  Future<void> deleteAddress(Address address, int userId) async {
    final dto = AddressDTO.fromDomain(address);
    final isDeleted = await _repository.deleteAddress(dto.id ?? 0, userId);

    if (isDeleted) {
      state.addresses.entity.removeWhere(
        (element) => element.id == address.id,
      );
    }

    state = AddressState.loadSuccess(state.addresses);
  }
}
