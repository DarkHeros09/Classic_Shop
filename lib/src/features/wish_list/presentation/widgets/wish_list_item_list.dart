import 'package:classic_shop/src/features/wish_list/presentation/widgets/empty_wish_list_page.dart';
import 'package:classic_shop/src/features/wish_list/presentation/widgets/loading_wish_list_product_card.dart';
import 'package:classic_shop/src/features/wish_list/presentation/widgets/wish_list_product_card.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final wishListItemsListIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class WishListLength {
  const WishListLength(this.length);

  final int length;
}

class WishListPreviousLengtForLoadinghNotifier
    extends Notifier<WishListLength> {
  @override
  WishListLength build() {
    return const WishListLength(0);
  }

  void setLength(int length) {
    state = WishListLength(length);
  }
}

final wishListPreviousLengthForLoadingProvider =
    NotifierProvider<WishListPreviousLengtForLoadinghNotifier, WishListLength>(
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
              : wishListLengthForLoading.length,
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
              : wishListLengthForLoading.length,
          loadSuccess: (_) => _.wishListItems.entity.length,
          loadFailure: (_) => _.wishListItems.entity.length,
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
                  wishListItemsListIndexProvider.overrideWithValue(index)
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
                              wishListPreviousLengthForLoadingProvider.notifier)
                          .setLength(_.wishListItems.entity.length);
                    });
                    return const WishListProductCard();
                  },
                  loadFailure: (_) => const SizedBox.shrink(),
                ),
              );
            },
            separator: (context, index) => const SizedBox(
              height: 16,
            ),
          )
        : const EmptyWishListPage();
  }
}
