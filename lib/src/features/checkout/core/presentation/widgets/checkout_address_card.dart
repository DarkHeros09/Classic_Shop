import 'package:classic_shop/src/features/address/application/address_notifier.dart';
import 'package:classic_shop/src/features/address/domain/address.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckoutAddressCard extends ConsumerWidget {
  const CheckoutAddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(
      addressNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (value) => value.addresses.entity
              .where((element) => element.id == element.defaultAddress)
              .singleOrNull,
        ),
      ),
    );
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: address == null
            ? const _AddAddressButton()
            : _AddressCard(address: address),
      ),
    );
  }
}

class _AddressCard extends StatelessWidget {
  const _AddressCard({
    required this.address,
  });

  final Address? address;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      height: 153,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF0D0D0D) : const Color(0xffffffff),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            color: Color(0x24000000),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                address?.name ?? '',
                style: appTheme.textTheme.bodySmall!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                onTap: () => context.goNamed(AppRoute.checkoutAddress.name),
                child: Text(
                  'تغيير',
                  style: appTheme.textTheme.bodyLarge!
                      .copyWith(color: const Color(0xff9D331F)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            address?.addressLine ?? '',
            style: appTheme.textTheme.bodySmall,
          ),
          const Spacer(),
          Text(
            'رقم الهاتف: 0925566287',
            style: appTheme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _AddAddressButton extends StatelessWidget {
  const _AddAddressButton();

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => context.goNamed(AppRoute.checkoutAddress.name),
      icon: const Icon(Icons.add_box),
      label: const Text('إضافة عنوان'),
      // style: ElevatedButton.styleFrom(
      //   backgroundColor: const Color(0xff9D331F),
      //   disabledBackgroundColor: Colors.grey,
      //   fixedSize: const Size(double.maxFinite, 56),
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(8)),
      //   ),
      // ),
    );
  }
}
