import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/cart/domain/shop_cart_item.dart';
import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_indicator;

class ProductDetailsPage3 extends HookConsumerWidget {
  const ProductDetailsPage3({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final scrollController = useScrollController();
    final pageController = usePageController();

    final windowHeight = MediaQuery.sizeOf(context).height - kToolbarHeight;
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: SliverAppBar(
                  // toolbarHeight: 0,
                  expandedHeight: windowHeight * .7,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: SizedBox(
                      height: windowHeight * .7,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: PageView(
                              controller: pageController,
                              // scrollDirection: Axis.vertical,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: ExtendedImage.network(
                                    product.productImage1,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: ExtendedImage.network(
                                    product.productImage2,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: ExtendedImage.network(
                                    product.productImage3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            // alignment: Alignment.centerRight,
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: smooth_indicator.SmoothPageIndicator(
                                controller: pageController,
                                count: 3,
                                // axisDirection: Axis.vertical,
                                effect:
                                    const smooth_indicator.ScrollingDotsEffect(
                                  // fixedCenter: true,
                                  // dotColor: Colors.black,
                                  dotHeight: 8,
                                  dotWidth: 8,
                                  activeDotColor: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Builder(
            builder: (context) {
              return Container(
                clipBehavior: Clip.hardEdge,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //   topRight: Radius.circular(20),
                  // ),
                  // boxShadow: [
                  // BoxShadow(
                  //   blurRadius: 5,
                  //   offset: Offset(0, 4),
                  // ),
                  // BoxShadow(
                  //   blurRadius: 10,
                  //   offset: Offset(0, 1),
                  // ),
                  //   BoxShadow(
                  //     blurRadius: 4,
                  //     offset: Offset(0, 2),
                  //   ),
                  // ],
                ),
                child: CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 12,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Row(
                        children: [
                          const Spacer(),
                          Container(
                            width: 30,
                            height: 5,
                            decoration: const BoxDecoration(
                              // color: Color(0xFFE0E0E0),
                              // color: Colors.grey[500],
                              color: Color(0xFF9E9E9E),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: appTheme.textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '${product.price} د.ل',
                            style: appTheme.textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 16,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Text('الحجم'),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 24,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: ElevatedButton.icon(
                        onPressed: () async {
                          // final authUser = await ref.read(userStorageProvider).read();
                          final authUser = ref
                              .read(authNotifierProvider.notifier)
                              .currentUser;
                          await ref
                              .read(cartNotifierProvider.notifier)
                              .createCartItem(
                                ShopCartItem(
                                  id: null,
                                  shoppingCartId: authUser?.shoppingCartId,
                                  productItemId: product.id,
                                  name: product.name,
                                  qty: 1,
                                  productImage: product.productImage1,
                                  price: product.price,
                                  active: product.active,
                                  createdAt: product.createdAt,
                                  updatedAt: product.updatedAt,
                                ),
                              );
                          // await ref.read(cartNotifierProvider.notifier).fetchCart();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff9D331F),
                          disabledBackgroundColor: Colors.grey,
                          fixedSize: const Size(double.maxFinite, 60),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                        icon: const Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        label: Text(
                          'إضافة إلى حقيبة التسوق',
                          style: appTheme.textTheme.bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    // SuperSliverListSeparated(
                    //   itemCount: 30,
                    //   itemBuilder: (context, index) => Text('$index'),
                    //   separator: (context, index) => const SizedBox(
                    //     height: 16,
                    //   ),
                    // )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyCustomDelegate extends SliverPersistentHeaderDelegate {
  const MyCustomDelegate({
    required this.product,
    required this.pageController,
    required this.windowHeight,
  });

  final Product product;
  final PageController pageController;
  final double windowHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final windowHeight = MediaQuery.sizeOf(context).height - kToolbarHeight;
    return Scaffold(
      body: FractionallySizedBox(
        heightFactor: 1,
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView.builder(
                itemCount: 3,
                controller: pageController,
                // scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Align(
                  alignment: Alignment.topCenter,
                  child: ExtendedImage.network(product.productImage1),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              // top: windowHeight * .8 * .5,
              // right: 16,
              child: smooth_indicator.SmoothPageIndicator(
                controller: pageController,
                count: 3,
                // axisDirection: Axis.vertical,
                effect: const smooth_indicator.SlideEffect(
                  // dotColor: Colors.white,
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Colors.black,
                  paintStyle: PaintingStyle.stroke,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => windowHeight * .8;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
