import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/cart_product_card.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/empty_cart_page.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/loading_cart_product_card.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class CartLengthForPersistentFooterNotifier extends AutoDisposeNotifier<int> {
//   @override
//   int build() {
//     return 0;
//   }

//   set length(int length) {
//     state = length;
//   }

//   int get length => state;
// }

// final cartLengthForPersistentFooterProvider =
//     NotifierProvider.autoDispose<CartLengthForPersistentFooterNotifier, int>(
//   CartLengthForPersistentFooterNotifier.new,
// );

class CartPreviousLengtForLoadinghNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  set length(int length) {
    state = length;
  }

  int get length => state;
}

final cartPreviousLengthForLoadingProvider =
    NotifierProvider<CartPreviousLengtForLoadinghNotifier, int>(
  CartPreviousLengtForLoadinghNotifier.new,
);

class CartItemsList extends ConsumerWidget {
  const CartItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartNotifierProvider);
    final cartLengthForLoading =
        ref.watch(cartPreviousLengthForLoadingProvider);
    final itemCount = ref.watch(
      cartNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.cartItems.entity.length,
          loadInProgress: (_) => _.cartItems.entity.isNotEmpty
              ? _.cartItems.entity.length
              : cartLengthForLoading,
          loadSuccess: (_) => _.cartItems.entity.length,
          loadFailure: (_) => _.cartItems.entity.length,
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
        return const _CartItemsListSliverList();
      },
      orElse: _CartItemsListSliverList.new,
    );
  }
}

class _CartItemsListSliverList extends HookConsumerWidget {
  const _CartItemsListSliverList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartNotifierProvider);
    final cartLengthForLoading =
        ref.watch(cartPreviousLengthForLoadingProvider);
    final itemCount = ref.watch(
      cartNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.cartItems.entity.length,
          loadInProgress: (_) => _.cartItems.entity.isNotEmpty
              ? _.cartItems.entity.length
              : cartLengthForLoading,
          loadSuccess: (_) => _.cartItems.entity.length,
          loadFailure: (_) => _.cartItems.entity.length,
        ),
      ),
    );
    return itemCount > 0
        ? SuperSliverListSeparated(
            // itemCount: n + 1,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              // if (n == 0) {
              //   return const SizedBox.shrink();
              // }
              // if (index == n) {
              //   return const FirstTabBottom();
              // }
              return ProviderScope(
                key: UniqueKey(),
                overrides: [
                  cartItemsListIndexProvider.overrideWithValue(index),
                ],
                child: state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loadInProgress: (_) => const LoadingCartProductCard(),
                  loadSuccess: (_) {
                    WidgetsBinding.instance.addPostFrameCallback((__) {
                      // ref
                      //     .read(cartLengthForPersistentFooterProvider.notifier)
                      //     .length = _.cartItems.entity.length;
                      ref
                          .read(cartPreviousLengthForLoadingProvider.notifier)
                          .length = _.cartItems.entity.length;
                    });
                    return const CartProductCard();
                  },
                  loadFailure: (_) => const SizedBox.shrink(),
                ),
              );
            },
            separator: (context, index) => const SizedBox(
              height: 16,
            ),
          )
        : const EmptyCartPage();
  }
}
