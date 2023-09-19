import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsPage extends HookConsumerWidget {
  const ProductDetailsPage({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                sliver: SliverList.list(
                  children: [
                    SizedBox(
                      height: windowHeight * .8,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: PageView(
                              controller: pageController,
                              scrollDirection: Axis.vertical,
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
                          Positioned(
                            // alignment: Alignment.centerRight,
                            top: windowHeight * .8 * .5,
                            right: 16,
                            child: SmoothPageIndicator(
                              controller: pageController,
                              count: 3,
                              axisDirection: Axis.vertical,
                              effect: const SlideEffect(
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
                    )
                  ],
                ),
              ),
            ];
          },
          // slivers: [
          // SliverAppBar(
          //   toolbarHeight: 0,
          //   floating: true,
          //   bottom: PreferredSize(
          //     preferredSize: Size(double.infinity, windowHeight * .8),
          //     child: SizedBox(
          //       height: windowHeight * .8,
          //       child: Stack(
          //         children: [
          //           PageView(
          //             controller: pageController,
          //             scrollDirection: Axis.vertical,
          //             children: [
          //               Align(
          //                 alignment: Alignment.topCenter,
          //                 child: ExtendedImage.network(product.productImage),
          //               ),
          //               Align(
          //                 alignment: Alignment.topCenter,
          //                 child: ExtendedImage.network(product.productImage),
          //               ),
          //               Align(
          //                 alignment: Alignment.topCenter,
          //                 child: ExtendedImage.network(product.productImage),
          //               ),
          //             ],
          //           ),
          //           Positioned(
          //             // alignment: Alignment.centerRight,
          //             top: windowHeight * .8 * .5,
          //             right: 16,
          //             child: SmoothPageIndicator(
          //               controller: pageController,
          //               count: 3,
          //               axisDirection: Axis.vertical,
          //               effect: const SlideEffect(
          //                 // dotColor: Colors.white,
          //                 dotHeight: 8,
          //                 dotWidth: 8,
          //                 activeDotColor: Colors.black,
          //                 paintStyle: PaintingStyle.stroke,
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // SliverPersistentHeader(
          //   floating: true,
          //   // pinned: true,
          //   delegate: MyCustomDelegate(
          //     product: product,
          //     pageController: pageController,
          //     windowHeight: windowHeight,
          //   ),
          // ),
          // SliverList.list(
          //   children: [
          //     SizedBox(
          //       height: windowHeight * .8,
          //       child: Stack(
          //         children: [
          //           Positioned.fill(
          //             child: PageView(
          //               controller: pageController,
          //               scrollDirection: Axis.vertical,
          //               children: [
          //                 Align(
          //                   alignment: Alignment.topCenter,
          //                   child:
          //                       ExtendedImage.network(product.productImage),
          //                 ),
          //                 Align(
          //                   alignment: Alignment.topCenter,
          //                   child:
          //                       ExtendedImage.network(product.productImage),
          //                 ),
          //                 Align(
          //                   alignment: Alignment.topCenter,
          //                   child:
          //                       ExtendedImage.network(product.productImage),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           Positioned(
          //             // alignment: Alignment.centerRight,
          //             top: windowHeight * .8 * .5,
          //             right: 16,
          //             child: SmoothPageIndicator(
          //               controller: pageController,
          //               count: 3,
          //               axisDirection: Axis.vertical,
          //               effect: const SlideEffect(
          //                 // dotColor: Colors.white,
          //                 dotHeight: 8,
          //                 dotWidth: 8,
          //                 activeDotColor: Colors.black,
          //                 paintStyle: PaintingStyle.stroke,
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // ),
          body: Builder(
            builder: (context) {
              return CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    // This is the flip side of the SliverOverlapAbsorber
                    // above.
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                      context,
                    ),
                  ),
                  SuperSliverListSeparated(
                    itemCount: 20,
                    itemBuilder: (context, index) => Text('$index'),
                    separator: (context, index) => const SizedBox(
                      height: 16,
                    ),
                  ),
                ],
              );
            },
          ),
          // ],
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
      body: SizedBox(
        height: windowHeight * .8,
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.vertical,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ExtendedImage.network(product.productImage1),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ExtendedImage.network(product.productImage2),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ExtendedImage.network(product.productImage3),
                  ),
                ],
              ),
            ),
            Positioned(
              // alignment: Alignment.centerRight,
              top: windowHeight * .8 * .5,
              right: 16,
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                axisDirection: Axis.vertical,
                effect: const SlideEffect(
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
  double get minExtent => windowHeight * .8;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
