import 'package:classic_shop/src/features/address/presentation/add_address.dart';
import 'package:classic_shop/src/features/address/presentation/widgets/addresses_list.dart';
import 'package:classic_shop/src/features/address/shared/provider.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressPage extends ConsumerStatefulWidget {
  const AddressPage({super.key});

  @override
  ConsumerState<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends ConsumerState<AddressPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        final user = await ref.read(userStorageProvider).read();
        if (user != null) {
          await ref
              .read(addressNotifierProvider.notifier)
              .fetchAddress(user.id);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet<void>(
          isScrollControlled: true,
          useRootNavigator: true,
          context: context,
          isDismissible: false,
          useSafeArea: true,
          builder: (context) {
            return const AddAddress();
          },
        ),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text(
                'عنوان التسليم',
                // style: GoogleFonts.notoKufiArabic(
                //   fontSize: 20,
                //   fontWeight: FontWeight.w400,
                //   color: Colors.black,
                // ),
                style: appTheme.textTheme.headlineSmall,
              ),
              centerTitle: true,
              // leading: IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.arrow_back),
              // ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const AddressesList(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
