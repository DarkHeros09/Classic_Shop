import 'package:classic_shop/src/features/address/presentation/widgets/address_card.dart';
import 'package:classic_shop/src/features/address/presentation/widgets/loading_address_card.dart';
import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addressesIndexProvider = Provider<int>((_) => throw UnimplementedError());

class AddressesLength {
  const AddressesLength(this.length);

  final int length;
}

class AddressPreviousLengtForLoadinghNotifier
    extends Notifier<AddressesLength> {
  @override
  AddressesLength build() {
    return const AddressesLength(0);
  }

  void setLength(int length) {
    state = AddressesLength(length);
  }
}

final addressPreviousLengthForLoadingProvider =
    NotifierProvider<AddressPreviousLengtForLoadinghNotifier, AddressesLength>(
  AddressPreviousLengtForLoadinghNotifier.new,
);

class AddressesList extends ConsumerWidget {
  const AddressesList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addressNotifierProvider);
    final addressLengthForLoading = ref.watch(
      addressPreviousLengthForLoadingProvider.select((value) => value.length),
    );
    final itemCount = ref.watch(
      addressNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.addresses.entity.length,
          loadInProgress: (_) => _.addresses.entity.isNotEmpty
              ? _.addresses.entity.length
              : addressLengthForLoading,
          loadSuccess: (_) => _.addresses.entity.length,
          loadFailure: (_) => _.addresses.entity.length,
        ),
      ),
    );
    return state.maybeMap(
      loadInProgress: (_) {
        if (itemCount == 0) {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return const _AddressesSliverList();
      },
      orElse: _AddressesSliverList.new,
    );
  }
}

class _AddressesSliverList extends ConsumerWidget {
  const _AddressesSliverList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addressNotifierProvider);
    final addressLengthForLoading = ref.watch(
      addressPreviousLengthForLoadingProvider.select((value) => value.length),
    );
    final itemCount = ref.watch(
      addressNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.addresses.entity.length,
          loadInProgress: (_) => _.addresses.entity.isNotEmpty
              ? _.addresses.entity.length
              : addressLengthForLoading,
          loadSuccess: (_) => _.addresses.entity.length,
          loadFailure: (_) => _.addresses.entity.length,
        ),
      ),
    );
    return SuperSliverListSeparated(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ProviderScope(
          key: UniqueKey(),
          overrides: [addressesIndexProvider.overrideWithValue(index)],
          child: state.map(
            initial: (_) => const SizedBox.shrink(),
            loadInProgress: (_) {
              if (_.addresses.entity.isEmpty && addressLengthForLoading == 0) {
                return const CircularProgressIndicator();
              }
              return const LoadingAddressCard();
            },
            loadSuccess: (_) {
              WidgetsBinding.instance.addPostFrameCallback((__) {
                // ref
                //     .read(cartLengthForPersistentFooterProvider.notifier)
                //     .length = _.cartItems.entity.length;
                ref
                    .read(
                      addressPreviousLengthForLoadingProvider.notifier,
                    )
                    .setLength(_.addresses.entity.length);
              });
              return const AddressCard();
            },
            loadFailure: (_) => const AddressCard(),
          ),
        );
      },
      separator: (context, index) => const SizedBox(
        height: 16,
      ),
    );
  }
}
