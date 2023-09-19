import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';
import 'package:classic_shop/src/features/wish_list/presentation/widgets/wish_list_item_list.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WishListProductCard extends ConsumerWidget {
  const WishListProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(wishListItemsListIndexProvider);
    final wishListItems = ref.watch(
      wishListNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.wishListItems.entity[index],
          loadInProgress: (_) => _.wishListItems.entity[index],
          loadSuccess: (_) => _.wishListItems.entity[index],
          loadFailure: (_) => _.wishListItems.entity[index],
        ),
      ),
    );
    return _WishListProductCard(
      wishListItems: wishListItems,
    );
  }
}

class _WishListProductCard extends StatelessWidget {
  const _WishListProductCard({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 128,
      width: 396,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x24000000),
            offset: Offset(0, 2),
            blurRadius: 4,
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          Image.network(
            wishListItems.productImage!,
            width: 128,
            height: 128,
            fit: BoxFit.cover,
          ),
          _ProductName(wishListItems: wishListItems),
          const _ProductColor(),
          const _ProductSize(),
          _OptionsButton(
            wishListItems,
          ),
          _ProductPrice(wishListItems: wishListItems),
        ],
      ),
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Positioned(
      bottom: 12,
      left: 4,
      child: Row(
        children: [
          Text(
            '${wishListItems.price} د.ل',
            style: appTheme.textTheme.bodyMedium,
          ),
          const Icon(
            Icons.price_check,
          )
        ],
      ),
    );
  }
}

class _OptionsButton extends ConsumerWidget {
  const _OptionsButton(
    this.wishListItems,
  );
  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    return Positioned(
      top: 0,
      left: 0,
      child: PopupMenuButton(
        offset: const Offset(10, 25),
        elevation: 16,
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'إضافة إلى المفضلات',
                  style: appTheme.textTheme.labelLarge,
                ),
                const SizedBox(
                  width: 28,
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'حذف',
                  style: appTheme.textTheme.labelLarge!
                      .copyWith(color: Colors.red),
                ),
                const SizedBox(
                  width: 28,
                ),
                const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
        onSelected: (value) async {
          if (value == 1) {
          } else if (value == 2) {
            debugPrint('statement called');
            await ref
                .read(wishListNotifierProvider.notifier)
                .deleteWishListItem(wishListItems);
          }
        },
      ),
    );
  }
}

class _ProductSize extends StatelessWidget {
  const _ProductSize();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Positioned(
      right: 240,
      top: 43,
      child: Row(
        children: [
          Text(
            'الحجم: ',
            style: appTheme.textTheme.bodySmall
                ?.copyWith(color: const Color(0xff7D7979)),
          ),
          Text(
            'متوسط',
            style: appTheme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ProductColor extends StatelessWidget {
  const _ProductColor();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Positioned(
      right: 144,
      top: 43,
      child: Row(
        children: [
          Text(
            'اللون: ',
            style: appTheme.textTheme.bodySmall
                ?.copyWith(color: const Color(0xff7D7979)),
          ),
          Text(
            'الاحمر',
            style: appTheme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ProductName extends StatelessWidget {
  const _ProductName({
    required this.wishListItems,
  });

  final WishListItem wishListItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Positioned(
      right: 144,
      top: 12,
      child: Text(
        wishListItems.name!,
        style:
            appTheme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
