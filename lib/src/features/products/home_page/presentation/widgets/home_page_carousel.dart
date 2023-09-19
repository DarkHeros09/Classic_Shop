import 'package:carousel_slider/carousel_slider.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/widgets/loading_carousel_card.dart';
import 'package:classic_shop/src/features/promotions/shared/provider.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselIndexNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  set index(int index) {
    state = index;
  }

  int get index => state;
}

final carouselIndexNotifierProvider =
    NotifierProvider<CarouselIndexNotifier, int>(CarouselIndexNotifier.new);

final carouselControllerProvider = Provider<CarouselController>((ref) {
  return CarouselController();
});

final carouselCardIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class HomePageCarousel extends StatefulHookConsumerWidget {
  const HomePageCarousel({super.key});

  @override
  ConsumerState<HomePageCarousel> createState() => _HomePageCarouselState();
}

class _HomePageCarouselState extends ConsumerState<HomePageCarousel> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(promotionsNotifierProvider.notifier).getPromotions();
    });
  }

  @override
  Widget build(BuildContext context) {
    final carouselController = ref.watch(carouselControllerProvider);
    // final productPromotionsItemCount = ref.watch(
    //       promotionsNotifierProvider.select(
    //         (value) => value.promotions.entity.productPromotions?.length,
    //       ),
    //     ) ??
    //     0;
    final state = ref.watch(promotionsNotifierProvider);
    final brandPromotionsItemCount = ref.watch(
          promotionsNotifierProvider.select(
            (value) => value.promotions.entity.brandPromotions?.length,
          ),
        ) ??
        0;
    // final categoryPromotionsItemCount = ref.watch(
    //       promotionsNotifierProvider.select(
    //         (value) => value.promotions.entity.categoryPromotions?.length,
    //       ),
    //     ) ??
    //     0;
    final itemCount =
        // productPromotionsItemCount;
        brandPromotionsItemCount;
    // categoryPromotionsItemCount;
    return SliverToBoxAdapter(
      key: UniqueKey(),
      child: CarouselSlider.builder(
        key: UniqueKey(),
        itemCount: itemCount,
        carouselController: carouselController,
        itemBuilder: (context, index, realIndex) {
          return ProviderScope(
            key: UniqueKey(),
            overrides: [carouselCardIndexProvider.overrideWithValue(index)],
            child: state.map(
              initial: (_) => const LoadingCarouselCard(),
              loadInProgress: (_) => const LoadingCarouselCard(),
              loadSuccess: (_) => const CarouselCard(),
              loadFailure: (_) => const CarouselCard(),
            ),
          );
        },
        options: CarouselOptions(
          autoPlayInterval: const Duration(seconds: 5),
          autoPlay: true,
          onPageChanged: (index, reason) =>
              ref.read(carouselIndexNotifierProvider.notifier).index = index,
          height: 136,
          viewportFraction: 1,
        ),
      ),
    );
  }
}

class CarouselCard extends HookConsumerWidget {
  const CarouselCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(carouselCardIndexProvider);
    final promotions = ref.watch(
      promotionsNotifierProvider.select(
        (value) => value.promotions.entity.brandPromotions?[index],
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 136,
        width: double.infinity,
        decoration: BoxDecoration(
          // color: Colors.grey,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExtendedNetworkImageProvider(
              promotions?.brandPromotionImage ?? '',
              cache: true,
              cacheMaxAge: const Duration(days: 30),
            ),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}

class HomePageCarouselIndicator extends ConsumerWidget {
  const HomePageCarouselIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexProvider = ref.watch(carouselIndexNotifierProvider);
    // final productPromotionsItemCount = ref.watch(
    //       promotionsNotifierProvider.select(
    //         (value) => value.promotions.entity.productPromotions?.length,
    //       ),
    //     ) ??
    //     0;
    final brandPromotionsItemCount = ref.watch(
          promotionsNotifierProvider.select(
            (value) => value.promotions.entity.brandPromotions?.length,
          ),
        ) ??
        0;
    // final categoryPromotionsItemCount = ref.watch(
    //       promotionsNotifierProvider.select(
    //         (value) => value.promotions.entity.categoryPromotions?.length,
    //       ),
    //     ) ??
    //     0;
    final itemCount =
        // productPromotionsItemCount +
        brandPromotionsItemCount;
    // categoryPromotionsItemCount;
    return SliverToBoxAdapter(
      child: Center(
        child: AnimatedSmoothIndicator(
          count: itemCount,
          activeIndex: indexProvider,
          effect: const SlideEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Color(0xFF9D331F),
          ),
        ),
      ),
    );
  }
}
