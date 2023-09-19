import 'package:classic_shop/src/features/address/domain/address.dart';
import 'package:classic_shop/src/features/address/presentation/add_address.dart';
import 'package:classic_shop/src/features/address/presentation/widgets/addresses_list.dart';
import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressCard extends ConsumerWidget {
  const AddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final index = ref.watch(addressesIndexProvider);
    final addresses = ref.watch(
      addressNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.addresses.entity[index],
          loadInProgress: (_) => _.addresses.entity[index],
          loadSuccess: (_) => _.addresses.entity[index],
          loadFailure: (_) => _.addresses.entity[index],
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        // height: 184,
        width: double.maxFinite,
        constraints: const BoxConstraints(),
        decoration: BoxDecoration(
          color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x24000000),
              offset: Offset(0, 2),
              blurRadius: 4,
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _NameAndOptions(addresses),
            const SizedBox(height: 8),
            _AddressDetails(addresses),
            const SizedBox(height: 12),
            _AddressPhoneNumber(addresses),
            _DefaultAddress(addresses)
          ],
        ),
      ),
    );
  }
}

class _DefaultAddress extends ConsumerWidget {
  const _DefaultAddress(this.addresses);

  final Address addresses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final addressNotifier = ref.watch(addressNotifierProvider.notifier);
    final allAddresses = ref.watch(
      addressNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.addresses.entity,
          loadInProgress: (_) => _.addresses.entity,
          loadSuccess: (_) => _.addresses.entity,
          loadFailure: (_) => _.addresses.entity,
        ),
      ),
    );

    // final shouldUpdateDefaultAddress = StateController<bool>(false);
    // ref.listen(addressNotifierProvider, (previous, next) {
    //   debugPrint('ADDRESS LENGTH');
    //   debugPrint(next.addresses.entity.length.toString());
    //   if (next.addresses.entity.length == 1 &&
    //       !shouldUpdateDefaultAddress.state) {
    //     shouldUpdateDefaultAddress.state = true;
    //     addressNotifier.updateAddress(
    //       addresses.copyWith(
    //         defaultAddress: addresses.id,
    //       ),
    //     );
    //   }
    //   if (next.addresses.entity.length > 1 &&
    //       shouldUpdateDefaultAddress.state) {
    //     shouldUpdateDefaultAddress.state = false;
    //   }
    // });

    // ..removeWhere(
    //   (element) => element.id == addresses.id,
    // );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            'إستخدم هذا العنوان عند التسليم',
            style: appTheme.textTheme.bodySmall,
          ),
          const SizedBox(
            width: 16,
          ),
          Checkbox(
            value: addresses.defaultAddress == addresses.id,
            activeColor: Colors.green,
            onChanged: (value) {
              for (var i = 0; i < allAddresses.length; i++) {
                addressNotifier.updateAddress(
                  allAddresses[i].copyWith(
                    defaultAddress: addresses.defaultAddress != addresses.id
                        ? addresses.id
                        : null,
                  ),
                );
              }
              // addressNotifier.updateAddress(
              //   addresses.copyWith(
              //     defaultAddress: addresses.defaultAddress != addresses.id
              //         ? addresses.id
              //         : 0,
              //   ),
              // );
            },
          )
        ],
      ),
    );
  }
}

class _AddressPhoneNumber extends ConsumerWidget {
  const _AddressPhoneNumber(this.addresses);

  final Address addresses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final user = ref.watch(authNotifierProvider.notifier).currentUser;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'رقم الهاتف: ${user?.telephone}',
        style: appTheme.textTheme.bodySmall,
      ),
    );
  }
}

class _AddressDetails extends StatelessWidget {
  const _AddressDetails(this.addresses);

  final Address addresses;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        addresses.addressLine,
        style: appTheme.textTheme.bodySmall,
      ),
    );
  }
}

class _NameAndOptions extends ConsumerWidget {
  const _NameAndOptions(this.addresses);

  final Address addresses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final addressNotifier = ref.watch(addressNotifierProvider.notifier);
    final user = ref.watch(authNotifierProvider.notifier).currentUser;
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(user?.username ?? ''),
          Theme(
            data: appTheme.copyWith(
              cardColor: const Color.fromARGB(255, 251, 249, 249),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            child: PopupMenuButton(
              elevation: 16,
              offset: const Offset(25, 50),
              itemBuilder: (context) => [
                PopupMenuItem<void>(
                  onTap: () => showModalBottomSheet<void>(
                    useRootNavigator: true,
                    context: context,
                    isDismissible: false,
                    builder: (context) {
                      return AddAddress(
                        address: addresses,
                      );
                    },
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'تعديل',
                        style: appTheme.textTheme.labelLarge,
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                      const Icon(Icons.edit)
                    ],
                  ),
                ),
                PopupMenuItem<void>(
                  onTap: () => addressNotifier.deleteAddress(
                      addresses, addresses.userId),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'حذف',
                        style: appTheme.textTheme.labelLarge!
                            .copyWith(color: Colors.red),
                      ),
                      const SizedBox(
                        width: 56,
                      ),
                      const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
