import 'package:classic_shop/src/features/shop_order/core/application/shop_order_notifier.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/ship_status_chip_row.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/shop_order_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopOrderPage extends StatefulHookConsumerWidget {
  const ShopOrderPage({super.key});

  @override
  ConsumerState<ShopOrderPage> createState() => _ShopOrderPageState();
}

class _ShopOrderPageState extends ConsumerState<ShopOrderPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(shopOrdersNotifierProvider.notifier).getShopOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text(
                'الطلبات',
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
            const SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              flexibleSpace: ShipStatusChipRow(),
            ),
            // const SliverToBoxAdapter(
            //   child: SizedBox(
            //     height: 16,
            //   ),
            // ),
            // const ShipStatusChipRow(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const ShopOrderList(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
