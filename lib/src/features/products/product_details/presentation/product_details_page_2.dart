import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsPage2 extends StatefulHookConsumerWidget {
  const ProductDetailsPage2({required this.product, super.key});

  final Product product;

  @override
  ConsumerState<ProductDetailsPage2> createState() =>
      _ProductDetailsPage2State();
}

class _ProductDetailsPage2State extends ConsumerState<ProductDetailsPage2> {
  late final DraggableScrollableController dragController;
  @override
  void initState() {
    super.initState();
    dragController = DraggableScrollableController();
  }

  @override
  void dispose() {
    dragController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final windowHeight = MediaQuery.sizeOf(context).height - kToolbarHeight;
    // final fabHeight = useState<double>(0);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: windowHeight * .8,
        flexibleSpace: FlexibleSpaceBar(
          background: SizedBox(
            height: windowHeight * .8,
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
                          widget.product.productImage1,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ExtendedImage.network(
                          widget.product.productImage2,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ExtendedImage.network(
                          widget.product.productImage3,
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
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      // axisDirection: Axis.vertical,
                      effect: const SlideEffect(
                        // dotColor: Colors.white,
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: Colors.black,
                        paintStyle: PaintingStyle.stroke,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        // backgroundColor: Colors.redAccent,
        child: DraggableScrollableSheet(
          builder: (context, scrollController) => Container(
            color: Colors.blue,
            child: ListView.builder(
              controller: scrollController,
              itemBuilder: (context, index) => Text('$index'),
            ),
          ),
        ),
      ),
    );
  }
}
