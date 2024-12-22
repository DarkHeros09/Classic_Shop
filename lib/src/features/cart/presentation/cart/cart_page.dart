import 'package:classic_shop/src/features/cart/presentation/cart/widgets/cart_app_bar.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/first_tab_bar_view.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/second_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPage extends HookConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            controller: scrollController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                    context,
                  ),
                  sliver: const SliverAppBar(
                    surfaceTintColor: Colors.transparent,
                    toolbarHeight: 0,
                    pinned: true,
                    bottom: PreferredSize(
                      preferredSize: Size(double.infinity, 91),
                      child: CartAppBar(),
                    ),
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                FirstTabBarView(),
                SecondTabBarView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
