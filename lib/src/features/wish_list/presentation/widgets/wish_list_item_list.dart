import 'package:classic_shop/src/features/wish_list/presentation/widgets/empty_wish_list_page.dart';
import 'package:classic_shop/src/features/wish_list/presentation/widgets/loading_wish_list_product_card.dart';
import 'package:classic_shop/src/features/wish_list/presentation/widgets/wish_list_product_card.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

final wishListItemsListIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class WishListLength {
  const WishListLength(this.length);

  final int length;
}

class WishListPreviousLengtForLoadinghNotifier extends Notifier<int> {
  // @override
  // WishListLength build() {
  //   return const WishListLength(0);
  // }

  // void setLength(int length) {
  //   state = WishListLength(length);
  // }
  @override
  int build() {
    return 0;
  }

  set length(int length) {
    state = length;
  }

  int get length => state;
}

final wishListPreviousLengthForLoadingProvider =
    NotifierProvider<WishListPreviousLengtForLoadinghNotifier, int>(
  WishListPreviousLengtForLoadinghNotifier.new,
);

class WishListItemsList extends ConsumerWidget {
  const WishListItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(wishListNotifierProvider);
    final wishListLengthForLoading =
        ref.watch(wishListPreviousLengthForLoadingProvider);
    final itemCount = ref.watch(
      wishListNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.wishListItems.entity.length,
          loadInProgress: (_) => _.wishListItems.entity.isNotEmpty
              ? _.wishListItems.entity.length
              : wishListLengthForLoading,
          loadSuccess: (_) => _.wishListItems.entity.length,
          loadFailure: (_) => _.wishListItems.entity.length,
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
        return const _WishListItemSliverList();
      },
      orElse: _WishListItemSliverList.new,
    );
  }
}

class _WishListItemSliverList extends HookConsumerWidget {
  const _WishListItemSliverList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(wishListNotifierProvider);
    final wishListLengthForLoading =
        ref.watch(wishListPreviousLengthForLoadingProvider);
    final itemCount = ref.watch(
      wishListNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.wishListItems.entity.length,
          loadInProgress: (_) => _.wishListItems.entity.isNotEmpty
              ? _.wishListItems.entity.length
              : wishListLengthForLoading,
          loadSuccess: (_) => _.wishListItems.entity.length,
          loadFailure: (_) => _.wishListItems.entity.length,
        ),
      ),
    );
    return itemCount > 0
        ? SuperSliverList.separated(
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
                  wishListItemsListIndexProvider.overrideWithValue(index),
                ],
                child: state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loadInProgress: (_) => const LoadingWishListProductCard(),
                  loadSuccess: (_) {
                    WidgetsBinding.instance.addPostFrameCallback((__) {
                      // ref
                      //     .read(wishListLengthForPersistentFooterProvider.notifier)
                      //     .length = _.wishListItems.entity.length;
                      ref
                          .read(
                            wishListPreviousLengthForLoadingProvider.notifier,
                          )
                          .length = _.wishListItems.entity.length;
                    });
                    return const WishListProductCard();
                  },
                  loadFailure: (_) => const SizedBox.shrink(),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
          )
        : const EmptyWishListPage();
  }
}
