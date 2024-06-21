import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/widgets/cart_items_list.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartProductCard extends ConsumerWidget {
  const CartProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(cartItemsListIndexProvider);
    final cartItems = ref.watch(
      cartNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.cartItems.entity[index],
          loadInProgress: (_) => _.cartItems.entity[index],
          loadSuccess: (_) => _.cartItems.entity[index],
          loadFailure: (_) => _.cartItems.entity[index],
        ),
      ),
    );
    return _CartProductCard(
      cartItems: cartItems,
    );
  }
}

class _CartProductCard extends StatelessWidget {
  const _CartProductCard({
    required this.cartItems,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 128,
      width: 396,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x24000000),
            offset: Offset(0, 2),
            blurRadius: 4,
          )
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          Image.network(
            cartItems.productImage!,
            width: 128,
            height: 128,
            fit: BoxFit.cover,
          ),
          _ProductName(cartItems: cartItems),
          const _ProductColor(),
          const _ProductSize(),
          _OptionsButton(
            cartItems,
          ),
          _ProductPrice(cartItems: cartItems),
          _ProductQTY(
            cartItems: cartItems,
            key: Key(cartItems.id.toString()),
          ),
        ],
      ),
    );
  }
}

// class ProductQTYNotifier extends AutoDisposeNotifier<int> {
//   @override
//   int build() {
//     return 1;
//   }

//   Future<void> previousProductQTY(int productItemId) async {
//     final cartRepository = ref.watch(cartRepositoryProvider);
//     final cartItem = await cartRepository.getCartItem(productItemId);
//     debugPrint('CART STATE: $cartItem');
//     state = cartItem?.qty ?? 1;
//     debugPrint('STATE: $state');
//   }

//   // Future<void> update(int productItemId) async {
//   //   final cartRepository = ref.watch(cartRepositoryProvider);
//   //   final cartItem = await cartRepository.getCartItem(productItemId);
//   //   final updatedCartItem = await cartRepository.updateCartItem(
//   //     ShopCartItemDTO.fromDomain(cartItem!),
//   //   );
//   //   state = updatedCartItem?.qty ?? 1;
//   // }

//   set qty(int length) {
//     if (length > 1 && length < 5) {
//       state = length;
//     }
//   }

//   int get qty => state;
// }

// final productQTYNotifierProvider =
//     NotifierProvider.autoDispose<ProductQTYNotifier, int>(
//   ProductQTYNotifier.new,
// );

class _ProductQTY extends HookConsumerWidget {
  const _ProductQTY({
    required this.cartItems,
    super.key,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final productQty = ref.watch(productQTYNotifierProvider);
    final qty = useState(cartItems.qty);
    // qty.addListener(
    //   () {
    //     debugPrint('CARTINT ${cartItems.name}: $qty');
    //   },
    // );
    // debugPrint('previuosQty: ${qty.value}');
    return Positioned(
      right: 144,
      bottom: 12,
      child: Row(
        children: [
          _CounterButton(
            icon: Icons.add,
            onTap: () async {
              // final qty = ++ref.read(productQTYNotifierProvider.notifier).qty;

              if (qty.value < 5) {
                final qty1 = ++qty.value;
                // debugPrint('CARTINT ${cartItems.name}: $qty1');
                await ref
                    .read(cartNotifierProvider.notifier)
                    .updateCart(cartItems.copyWith(qty: qty1));
              }
            },
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            qty.value.toString(),
          ),
          const SizedBox(
            width: 12,
          ),
          _CounterButton(
            icon: Icons.remove,
            onTap: () async {
              // final qty = --ref.read(productQTYNotifierProvider.notifier).qty;
              if (qty.value > 1) {
                final qty1 = --qty.value;
                // debugPrint('CARTINT ${cartItems.name}: $qty1');
                await ref
                    .read(cartNotifierProvider.notifier)
                    .updateCart(cartItems.copyWith(qty: qty1));
              }
            },
          ),
        ],
      ),
    );
  }
}

class _CounterButton extends StatelessWidget {
  const _CounterButton({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 8,
            color: Color(
              0x1A000000,
            ),
          )
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 18,
          child: Icon(
            icon,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice({
    required this.cartItems,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Positioned(
      bottom: 12,
      left: 4,
      child: Row(
        children: [
          Text(
            '${cartItems.price} د.ل',
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
    this.cartItems,
  );
  final ShopCartItem cartItems;

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
                .read(cartNotifierProvider.notifier)
                .deleteCartItem(cartItems);
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
    required this.cartItems,
  });

  final ShopCartItem cartItems;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Positioned(
      right: 144,
      top: 12,
      child: Text(
        cartItems.name!,
        style:
            appTheme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
