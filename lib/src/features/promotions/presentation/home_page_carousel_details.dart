import 'package:classic_shop/src/features/products/core/shared/providers.dart';
import 'package:classic_shop/src/features/products/helper/enums.dart';
import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:classic_shop/src/features/promotions/presentation/widgets/selected_carousel_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageCarouselDetails extends StatefulHookConsumerWidget {
  const HomePageCarouselDetails({
    required this.id,
    this.promotionType,
    super.key,
  });
  final int id;
  final PromotionType? promotionType;

  @override
  ConsumerState<HomePageCarouselDetails> createState() =>
      _HomePageCarouselDetailsState();
}

class _HomePageCarouselDetailsState
    extends ConsumerState<HomePageCarouselDetails> {
  @override
  void initState() {
    super.initState();
    debugPrint('ZXCV: ${widget.promotionType}');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.promotionType != null) {
        switch (widget.promotionType!) {
          case PromotionType.product:
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction: ProductsFunction.getProductsWithPromotions,
                  productId: widget.id,
                );
          case PromotionType.brand:
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction:
                      ProductsFunction.getProductsWithBrandPromotions,
                  brandId: widget.id,
                );
          case PromotionType.category:
            ref.read(listProductsNotifierProvider.notifier).getProductsPage(
                  productsFunction:
                      ProductsFunction.getProductsWithCategoryPromotions,
                  categoryId: widget.id,
                );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [SelectedCarouselGridView()],
        ),
      ),
    );
  }
}
