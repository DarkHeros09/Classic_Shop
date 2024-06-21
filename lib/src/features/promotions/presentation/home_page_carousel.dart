import 'package:carousel_slider/carousel_slider.dart';
import 'package:classic_shop/src/features/promotions/presentation/widgets/loading_carousel_card.dart';
import 'package:classic_shop/src/features/promotions/shared/provider.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    final state = ref.watch(promotionsNotifierProvider);
    final itemCount = ref.watch(
      promotionsNotifierProvider.select(
        (value) => value.promotions.entity.length,
      ),
    );

    return SliverToBoxAdapter(
      key: UniqueKey(),
      child: CarouselSlider.builder(
        key: UniqueKey(),
        itemCount: itemCount,
        carouselController: carouselController,
        itemBuilder: (context, index, realIndex) {
          return ProviderScope(
            key: UniqueKey(),
            overrides: [
              carouselCardIndexProvider.overrideWithValue(index),
            ],
            child: state.map(
              initial: (_) => const LoadingCarouselCard(),
              loadInProgress: (_) => const LoadingCarouselCard(),
              loadSuccess: (_) => itemCount > 0
                  ? const CarouselCard()
                  : const SizedBox.shrink(),
              loadFailure: (_) => itemCount > 0
                  ? const CarouselCard()
                  : const SizedBox.shrink(),
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
        (value) {
          return value.promotions.entity[index];
        },
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        onTap: () {
          context.goNamed(
            AppRoute.promotedCarouselCard.name,
            pathParameters: {
              'id': promotions.id.toString(),
            },
            extra: promotions.type,
          );
        },
        child: Container(
          height: 136,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.grey,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: ExtendedNetworkImageProvider(
                promotions.promotionImage ?? '',
                cache: true,
                cacheMaxAge: const Duration(days: 30),
              ),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
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
    final itemCount = ref.watch(
      promotionsNotifierProvider.select(
        (value) => value.promotions.entity.length,
      ),
    );
    return itemCount > 0
        ? SliverToBoxAdapter(
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
          )
        : const SliverToBoxAdapter(child: SizedBox.shrink());
  }
}
