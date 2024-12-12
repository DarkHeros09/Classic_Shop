import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/cart/application/cart_notifier.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/loading_product_image.dart';
import 'package:classic_shop/src/features/size/application/size_notifier.dart';
import 'package:classic_shop/src/features/size/presentation/size_page.dart';
import 'package:classic_shop/src/features/size/shared/provider.dart';
import 'package:classic_shop/src/features/wish_list/application/wish_list_notifier.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_indicator;

class ProductDetailsPage extends HookConsumerWidget {
  const ProductDetailsPage({
    required this.product,
    required this.discountValue,
    super.key,
  });

  final Product product;
  final int discountValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final carouselIndex = useState(0);
    final activateCartAnimation = useValueNotifier(false);
    return Scaffold(
      bottomNavigationBar: _ProductDetailBottomButtonsBar(
        product: product,
        activateCartAnimation: activateCartAnimation,
      ),
      body: SafeArea(
        child: CustomScrollView(
          // key: const Key('value'),
          slivers: [
            _ProductDetailAppBar(
              product: product,
              activateCartAnimation: activateCartAnimation,
            ),
            _ProductImages(
              product: product,
              carouselIndex: carouselIndex,
              discountValue: discountValue,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            _ImageCarouselIndicator(
              carouselIndex: carouselIndex,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            _ProductDetailNameAndPrice(
              product: product,
              discountValue: discountValue,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                // ignore: lines_longer_than_80_chars
                child: Text(
                  textAlign: TextAlign.justify,
                  product.description,
                  style:
                      // GoogleFonts.notoKufiArabic(
                      //   fontSize: 14,
                      //   fontWeight: FontWeight.w400,
                      //   color: Colors.black,
                      // ),
                      appTheme.textTheme.bodySmall,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            // const SliverPadding(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   sliver: SliverToBoxAdapter(
            //     child: Row(
            //       children: [
            //         Icon(
            //           Icons.account_box,
            //           size: 32,
            //         ),
            //         SizedBox(
            //           width: 4,
            //         ),
            //         Text(
            //           'التوصيل:',
            //           style: GoogleFonts.notoKufiArabic(
            //             fontSize: 16,
            //             fontWeight: FontWeight.w700,
            //             color: Colors.black,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // const SliverToBoxAdapter(
            //   child: SizedBox(
            //     height: 8,
            //   ),
            // ),
            // SliverPadding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   sliver: SliverToBoxAdapter(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           '\u2022 طرابلس خلال 48-72 ساعة',
            //           style: GoogleFonts.notoKufiArabic(
            //             fontSize: 14,
            //             fontWeight: FontWeight.w400,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Text(
            //           '\u2022 بنغازي خلال 24 ساعة',
            //           style: GoogleFonts.notoKufiArabic(
            //             fontSize: 14,
            //             fontWeight: FontWeight.w400,
            //             color: Colors.black,
            //           ),
            //         ),
            //         const SizedBox(
            //           height: 16,
            //         )
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class _ProductDetailBottomButtonsBar extends StatefulHookConsumerWidget {
  const _ProductDetailBottomButtonsBar({
    required this.product,
    required this.activateCartAnimation,
    super.key,
  });

  final Product product;
  final ValueNotifier<bool> activateCartAnimation;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<_ProductDetailBottomButtonsBar> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref
            .read(sizeNotifierProvider.notifier)
            .listSizesByProductItemId(productItemId: widget.product.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final buyButtonIsPressed = useValueNotifier(false);
    final cartButtonIcon = ref.read(
      siAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.cartButtonIcon.name,
            )
            .$2,
      ),
    );
    final cartNotifierState = ref.watch(cartNotifierProvider);
    final sizesNotifierState = ref.watch(sizeNotifierProvider);
    final selectedSize = ref.watch(selectedSizeProvider);
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              offset: Offset(0, -2),
              color: Color(0x24000000),
            ),
          ],
        ),
        child: SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: sizesNotifierState.maybeMap(
                    orElse: () => ElevatedButton.icon(
                      onPressed: null,
                      label: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.grey[300],
                        disabledBackgroundColor: Colors.grey,
                        fixedSize: const Size(132, 56),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                    loadSuccess: (value) => ElevatedButton.icon(
                      onPressed: value.sizes.entity.isNotEmpty
                          ? () {
                              showModalBottomSheet<void>(
                                context: context,
                                showDragHandle: true,
                                isScrollControlled: true,
                                builder: (context) => const SizePage(),
                              );
                            }
                          : null,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: value.sizes.entity.isNotEmpty
                            ? Colors.black
                            : Colors.white,
                      ),
                      label: Text(
                        selectedSize != null
                            ? selectedSize.sizeValue
                            : 'إختر القياس',
                        style: value.sizes.entity.isNotEmpty
                            ? appTheme.textTheme.bodySmall?.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              )
                            : appTheme.textTheme.bodySmall?.copyWith(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.grey[300],
                        disabledBackgroundColor: Colors.grey,
                        fixedSize: const Size(132, 56),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton.icon(
                    onPressed: widget.product.qtyInStock == 0
                        ? null
                        : () async {
                            // final authUser = await ref.read(userStorageProvider).read();
                            final authUser = ref
                                .read(authNotifierProvider.notifier)
                                .currentUser;
                            if (authUser != null) {
                              final cuurentCartItems = ref
                                  .read(cartNotifierProvider)
                                  .cartItems
                                  .entity
                                  .where(
                                    (element) =>
                                        element.productItemId ==
                                        widget.product.id,
                                  )
                                  .firstOrNull;
                              if (cuurentCartItems == null &&
                                  buyButtonIsPressed.value == false) {
                                // await Future(
                                //   () => ref
                                //       .read(cartItemsNumberProvider.notifier)
                                //       .length++,
                                // );
                                await HapticFeedback.vibrate();
                                buyButtonIsPressed.value = true;
                                await ref
                                    .read(cartNotifierProvider.notifier)
                                    .createCartItem(
                                      ShopCartItem(
                                        id: null,
                                        shoppingCartId: authUser.shoppingCartId,
                                        productItemId: widget.product.id,
                                        name: widget.product.name,
                                        qty: 1,
                                        productImage:
                                            widget.product.productImage1,
                                        color: widget.product.color,
                                        sizeId: selectedSize?.id,
                                        size: selectedSize?.sizeValue,
                                        price: widget.product.price,
                                        active: widget.product.active,
                                        createdAt: widget.product.createdAt,
                                        updatedAt: widget.product.updatedAt,
                                        categoryPromoId:
                                            widget.product.categoryPromoId,
                                        categoryPromoName:
                                            widget.product.categoryPromoName,
                                        categoryPromoDescription: widget
                                            .product.categoryPromoDescription,
                                        categoryPromoDiscountRate: widget
                                            .product.categoryPromoDiscountRate,
                                        categoryPromoActive:
                                            widget.product.categoryPromoActive,
                                        categoryPromoStartDate: widget
                                            .product.categoryPromoStartDate,
                                        categoryPromoEndDate:
                                            widget.product.categoryPromoEndDate,
                                        brandPromoId:
                                            widget.product.brandPromoId,
                                        brandPromoName:
                                            widget.product.brandPromoName,
                                        brandPromoDescription: widget
                                            .product.brandPromoDescription,
                                        brandPromoDiscountRate: widget
                                            .product.brandPromoDiscountRate,
                                        brandPromoActive:
                                            widget.product.brandPromoActive,
                                        brandPromoStartDate:
                                            widget.product.brandPromoStartDate,
                                        brandPromoEndDate:
                                            widget.product.brandPromoEndDate,
                                        productPromoId:
                                            widget.product.productPromoId,
                                        productPromoName:
                                            widget.product.productPromoName,
                                        productPromoDescription: widget
                                            .product.productPromoDescription,
                                        productPromoDiscountRate: widget
                                            .product.productPromoDiscountRate,
                                        productPromoActive:
                                            widget.product.productPromoActive,
                                        productPromoStartDate: widget
                                            .product.productPromoStartDate,
                                        productPromoEndDate:
                                            widget.product.productPromoEndDate,
                                      ),
                                    );
                                await Future(
                                  () => ref
                                      .read(cartNotifierProvider.notifier)
                                      .fetchCart(),
                                ).then(
                                  (value) =>
                                      widget.activateCartAnimation.value = true,
                                );
                              }
                            } else {
                              context.goNamed(AppRoute.signIn.name);
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff9D331F),
                      disabledBackgroundColor: Colors.grey,
                      fixedSize: const Size(double.maxFinite, 56),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    icon: cartNotifierState.mapOrNull(
                      loadSuccess: (_) =>
                          ScalableImageWidget(si: cartButtonIcon),
                    ),
                    label: cartNotifierState.map(
                      initial: (_) => Text(
                        widget.product.qtyInStock != 0
                            ? 'إضافة إلى حقيبة التسوق'
                            : 'غير متوفر',
                        style: appTheme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      loadInProgress: (value) => const Center(
                        child: SizedBox.square(
                          dimension: 25,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      loadSuccess: (_) => Text(
                        widget.product.qtyInStock != 0
                            ? 'إضافة إلى حقيبة التسوق'
                            : 'غير متوفر',
                        style: appTheme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      loadFailure: (_) => Text(
                        widget.product.qtyInStock != 0
                            ? 'إضافة إلى حقيبة التسوق'
                            : 'غير متوفر',
                        style: appTheme.textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProductDetailNameAndPrice extends HookConsumerWidget {
  const _ProductDetailNameAndPrice({
    required this.product,
    required this.discountValue,
  });

  final Product product;
  final int discountValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final discountedPrice = (num.parse(product.price) -
            num.parse(product.price) * discountValue / 100)
        .toStringAsFixed(2);
    // final priceTagIcon = ref.read(
    //   siAssetsProvider.select(
    //     (value) => value
    //         .singleWhere(
    //           (element) => element.$1 == SvgAssets.priceTag.name,
    //         )
    //         .$2,
    //   ),
    // );
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              product.name,
              style: appTheme.textTheme.titleLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Text(
                      '${product.price} د.ل',
                      style: appTheme.textTheme.titleLarge?.copyWith(
                        fontWeight:
                            discountValue != 0 || product.qtyInStock == 0
                                ? FontWeight.normal
                                : FontWeight.w700,
                        color: discountValue != 0 || product.qtyInStock == 0
                            ? const Color(0xFF9B9B9B)
                            : null,
                      ),
                    ),
                    if (discountValue != 0 || product.qtyInStock == 0)
                      const Positioned.fill(
                        child: SizedBox(
                          width: double.infinity,
                          child: Divider(
                            color: Color(0xFF9B9B9B),
                            // height: 25,
                            thickness: 1,
                          ),
                        ),
                      ),
                  ],
                ),
                if (discountValue != 0 && product.qtyInStock != 0) ...[
                  const SizedBox(width: 8),
                  Text(
                    '$discountedPrice د.ل',
                    style: appTheme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      // color: const Color(0xFFB71C1C),
                      color: const Color(0xFFDB3022),
                    ),
                  ),
                ],
                // const Icon(Icons.price_check),
                // Transform.flip(
                //   flipX: true,
                //   child: ScalableImageWidget(si: priceTagIcon),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageCarouselIndicator extends StatelessWidget {
  const _ImageCarouselIndicator({
    required this.carouselIndex,
  });

  final ValueNotifier<int> carouselIndex;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: smooth_indicator.AnimatedSmoothIndicator(
          count: 3,
          // textDirection: TextDirection.rtl,
          activeIndex: carouselIndex.value,
          effect: const smooth_indicator.SlideEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Color(0xFF9D331F),
          ),
        ),
      ),
    );
  }
}

class _ProductImages extends HookConsumerWidget {
  const _ProductImages({
    required this.product,
    required this.carouselIndex,
    required this.discountValue,
  });

  final Product product;
  final ValueNotifier<int> carouselIndex;
  final int discountValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final carouselController = CarouselSliderController();
    // final priceTagIcon = ref.read(
    //   siAssetsProvider.select(
    //     (value) => value
    //         .singleWhere(
    //           (element) => element.$1 == SvgAssets.priceTag.name,
    //         )
    //         .$2,
    //   ),
    // );
    return SliverToBoxAdapter(
      child: CarouselSlider.builder(
        itemCount: 3,
        carouselController: carouselController,
        itemBuilder: (context, index, realIndex) {
          final imageList = [
            product.productImage1,
            product.productImage2,
            product.productImage3,
          ];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Stack(
              children: [
                ExtendedImage.network(
                  height: 500,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.loading:
                      case LoadState.failed:
                        return const LoadingProductDetailImage();
                      case LoadState.completed:
                        return ColorFiltered(
                          colorFilter: product.qtyInStock == 0
                              ? const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.color,
                                )
                              : const ColorFilter.mode(
                                  Colors.transparent,
                                  BlendMode.color,
                                ),
                          child: state.completedWidget,
                        );
                    }
                  },
                  shape: BoxShape.rectangle,
                  opacity: product.qtyInStock == 0
                      ? const AlwaysStoppedAnimation<double>(.5)
                      : const AlwaysStoppedAnimation<double>(1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  fit: BoxFit.cover,
                  imageList[index],
                  cacheMaxAge: const Duration(days: 30),
                ),
                if (product.qtyInStock == 0)
                  Positioned.fill(
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: Colors.black,
                          ),
                          child: Text(
                            // 'نفذت الكمية',
                            'إنتهى من المخزن',
                            style: appTheme.textTheme.bodyLarge
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            return carouselIndex.value = index;
          },
          height: 500,
          viewportFraction: .85,
        ),
      ),
    );
  }
}

class _ProductDetailAppBar extends HookConsumerWidget {
  const _ProductDetailAppBar({
    required this.product,
    required this.activateCartAnimation,
  });

  final Product product;
  final ValueNotifier<bool> activateCartAnimation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final user = ref.read(authStreamProvider).value;
    final tokenIsValid = ref.watch(tokenValidStreamProvider).value;
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final cartItemState = ref.watch(
      cartNotifierProvider.select((value) => value.cartItems.entity.length),
    );
    final cartAppBarIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.cartAppBarIcon.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.cartAppBarIcon.name,
                  )
                  .$2,
            ),
          );
    final activateHeartAnimation = useState(false);
    final wishListItem = ref.watch(
      wishListNotifierProvider.select(
        (value) => value.wishListItems.entity
            .where((element) => element.productItemId == product.id)
            .firstOrNull,
      ),
    );
    final heartIconPressed = useValueNotifier(wishListItem != null);

    debugPrint('WISHLISTITEM: $wishListItem');
    // final wishListItemsSelected = ref.watch(wishListNotifierProvider.select(
    //     (value) => value.wishListItems.entity
    //         .any((element) => element.id == product.id)));
    final heartIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => heartIconPressed.value
                        ? element.$1 == SvgAssets.heartSelected.name
                        : element.$1 == SvgAssets.heart.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => heartIconPressed.value
                        ? element.$1 == SvgAssets.heartSelected.name
                        : element.$1 == SvgAssets.heart.name,
                  )
                  .$2,
            ),
          );
    final selectedSize = ref.watch(selectedSizeProvider);
    return SliverAppBar(
      clipBehavior: Clip.none,
      pinned: true,
      title: Text(
        'تفاصيل المنتج',
        style: appTheme.textTheme.headlineSmall,
      ),
      centerTitle: true,
      actions: [
        if (user != null && tokenIsValid != null && tokenIsValid) ...[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 100,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: .5,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    image: DecorationImage(
                      image: ExtendedNetworkImageProvider(
                        product.productImage1,
                        cache: true,
                        cacheMaxAge: const Duration(days: 30),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
                  .animate(
                    autoPlay: false,
                    target: activateCartAnimation.value ? 1 : 0,
                    onComplete: (controller) {
                      controller.reset();
                    },
                  )
                  .scale()
                  .moveY(
                    end: -99,
                    delay: const Duration(milliseconds: 1100),
                    curve: Curves.easeIn,
                  )
                  .hide(),
              Positioned(
                top: 0,
                child: Container(
                  height: 50,
                  width: 50,
                  color: isDarkMode
                      ? const Color(0xFF121212)
                      : const Color(0xFFFAFAFA),
                ),
              ),
              Stack(
                children: [
                  Badge(
                    isLabelVisible: cartItemState != 0,
                    label: Text(cartItemState.toString()),
                    offset: const Offset(24, 0),
                    child: IconButton(
                      onPressed: () => context.goNamed(AppRoute.cart.name),
                      icon: ScalableImageWidget(
                        si: cartAppBarIcon,
                      )
                          .animate(
                            autoPlay: false,
                            target: activateCartAnimation.value ? 1 : 0,
                            onComplete: (controller) {
                              controller.reset();
                              activateCartAnimation.value = false;
                            },
                          )
                          .shakeY(
                            amount: 10,
                            hz: 2,
                            delay: const Duration(milliseconds: 1500),
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () async {
              final authUser = ref.read(authStreamProvider).value;
              if (authUser != null) {
                await HapticFeedback.vibrate();
                activateHeartAnimation.value = true;
                heartIconPressed.value = !heartIconPressed.value;
                if (wishListItem != null) {
                  await ref
                      .read(wishListNotifierProvider.notifier)
                      .deleteWishListItem(wishListItem);
                } else {
                  await ref
                      .read(wishListNotifierProvider.notifier)
                      .createWishListItem(
                        WishListItem(
                          id: null,
                          wishListId: authUser.wishListId,
                          productItemId: product.id,
                          name: product.name,
                          productImage: product.productImage1,
                          color: product.color,
                          sizeId: selectedSize?.id,
                          size: selectedSize?.sizeValue,
                          price: product.price,
                          active: product.active,
                          createdAt: product.createdAt,
                          updatedAt: product.updatedAt,
                          categoryPromoId: product.categoryPromoId,
                          categoryPromoName: product.categoryPromoName,
                          categoryPromoDescription:
                              product.categoryPromoDescription,
                          categoryPromoDiscountRate:
                              product.categoryPromoDiscountRate,
                          categoryPromoActive: product.categoryPromoActive,
                          categoryPromoStartDate:
                              product.categoryPromoStartDate,
                          categoryPromoEndDate: product.categoryPromoEndDate,
                          brandPromoId: product.brandPromoId,
                          brandPromoName: product.brandPromoName,
                          brandPromoDescription: product.brandPromoDescription,
                          brandPromoDiscountRate:
                              product.brandPromoDiscountRate,
                          brandPromoActive: product.brandPromoActive,
                          brandPromoStartDate: product.brandPromoStartDate,
                          brandPromoEndDate: product.brandPromoEndDate,
                          productPromoId: product.productPromoId,
                          productPromoName: product.productPromoName,
                          productPromoDescription:
                              product.productPromoDescription,
                          productPromoDiscountRate:
                              product.productPromoDiscountRate,
                          productPromoActive: product.productPromoActive,
                          productPromoStartDate: product.productPromoStartDate,
                          productPromoEndDate: product.productPromoEndDate,
                        ),
                      );
                }
              }
            },
            icon: ScalableImageWidget(si: heartIcon)
                .animate(
                  autoPlay: false,
                  target: activateHeartAnimation.value ? 1 : 0,
                  onComplete: (controller) {
                    controller.reset();
                    activateHeartAnimation.value = false;
                  },
                )
                .scale(
                  begin: const Offset(1, 1),
                  end: const Offset(1.5, 1.5),
                ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ],
    );
  }
}
