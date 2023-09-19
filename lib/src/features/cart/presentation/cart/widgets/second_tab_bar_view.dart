import 'package:classic_shop/src/features/wish_list/presentation/wish_list_page.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SecondTabBarView extends StatefulHookConsumerWidget {
  const SecondTabBarView({super.key});

  @override
  ConsumerState<SecondTabBarView> createState() => _SecondTabBarViewState();
}

class _SecondTabBarViewState extends ConsumerState<SecondTabBarView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(wishListNotifierProvider.notifier).fetchWishList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return const WishListPage();
      },
    );
  }
}
