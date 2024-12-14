import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/cart_items_list.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/first_tab_bar_bottom.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstTabBarView extends ConsumerStatefulWidget {
  const FirstTabBarView({
    super.key,
  });

  @override
  ConsumerState<FirstTabBarView> createState() => _FirstTabBarViewState();
}

class _FirstTabBarViewState extends ConsumerState<FirstTabBarView> {
  late final ScrollController controller;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(cartNotifierProvider.notifier).fetchCart();
      },
    );
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final cartLengthForPersistentFooter =
    //     ref.watch(cartLengthForPersistentFooterProvider);
    final state = ref.watch(cartNotifierProvider);
    return Scaffold(
      persistentFooterButtons:
          // cartLengthForPersistentFooter == 0 ? null : const [FirstTabBottom()],
          state.map(
        initial: (_) => null,
        loadInProgress: (_) => null,
        loadSuccess: (_) => _.cartItems.entity.isEmpty ||
                _.cartItems.entity.every((element) => element.sizeQty == 0)
            ? null
            : const [FirstTabBottom()],
        loadFailure: (_) => _.cartItems.entity.isEmpty ||
                _.cartItems.entity.every((element) => element.sizeQty == 0)
            ? null
            : const [FirstTabBottom()],
      ),
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverOverlapInjector(
            // This is the flip side of the SliverOverlapAbsorber
            // above.
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
              context,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: CartItemsList(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}
