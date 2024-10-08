import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/loading_shop_order_items_info_table.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/shop_order_items_info_table.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/shop_order_items_list.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/shop_order_items_number.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/shop_order_items_order_number_and_date.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/widgets/shop_order_items_status_ans_track_number.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopOrderItemsDetails extends StatefulHookConsumerWidget {
  const ShopOrderItemsDetails({
    required this.orderId,
    required this.orderNumber,
    required this.trackNumber,
    required this.itemCount,
    super.key,
  });
  final int orderId;
  final int orderNumber;
  final String trackNumber;
  final int itemCount;
  @override
  ConsumerState<ShopOrderItemsDetails> createState() =>
      _ShopOrderItemsDetailsState();
}

class _ShopOrderItemsDetailsState extends ConsumerState<ShopOrderItemsDetails> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((__) {
      ref.read(shopOrderItemsNotifierProvider.notifier).fetchShopOrderItems(
            orderId: widget.orderId,
            trackNumber: widget.trackNumber,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final state =
        ref.watch(shopOrderItemsNotifierProvider.select((value) => value));
    return state.map(
      initial: (_) => const Scaffold(body: SizedBox.shrink()),
      loadInProgress: (_) => const LoadingShopOrderItemsDetails(),
      loadSuccess: (_) => Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                // automaticallyImplyLeading: false,
                title: Text(
                  'تفاصيل الطلب',
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
                //   icon: const Icon(Icons.close),
                // ),
              ),
              if (widget.itemCount == 0)
                const SliverToBoxAdapter(
                  child: SizedBox.shrink(),
                ),
              if (widget.itemCount != 0) ...[
                const SliverToBoxAdapter(
                  child: SizedBox(height: 16),
                ),
                ShopOrderItemsOrderNumberAndDate(
                  orderNumber: widget.orderNumber,
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 16),
                ),
                const ShopOrderItemsStatusAndTrackNumber(),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 16),
                ),
                const ShopOrderItemsNumber(),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 12),
                ),
                const ShopOrderItemsList(),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 24),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'معلومات الطلب',
                      style: appTheme.textTheme.bodySmall
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 16),
                ),
                const ShopOrderItemsInfoTable(),
              ],
            ],
          ),
        ),
      ),
      loadFailure: (_) => const Scaffold(body: SizedBox.shrink()),
    );
  }
}
