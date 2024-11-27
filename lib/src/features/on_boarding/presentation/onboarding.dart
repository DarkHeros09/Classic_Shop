import 'package:classic_shop/src/features/on_boarding/application/on_boarding_notifier.dart';
import 'package:classic_shop/src/features/on_boarding/shared/providers.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends HookConsumerWidget {
  const OnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final pageController = usePageController();
    final one = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere((element) => element.$1 == SvgAssets.onBoarding1.name)
            .$2,
      ),
    );
    final two = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere((element) => element.$1 == SvgAssets.onBoarding2.name)
            .$2,
      ),
    );
    final three = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere((element) => element.$1 == SvgAssets.onBoarding3.name)
            .$2,
      ),
    );
    final onBoardingIndex = ref.watch(onBoardingIndexNotifierProvider);
    final onBoardingList = [
      {
        'text1': '''مرحباً بك في متجر''',
        'text2': ' كلاسيك ',
        'text3':
            'حيث يمكنك التسوق هنا للحصول على أفضل الملابس ذات الجودة العالية.',
        'image': two,
      },
      {
        'text1':
            '''تسوقي من راحة منزلك وسنقوم بتوصيل كل ما تطلبينه من المتجر إليك مباشرة.''',
        'text2': '',
        'text3': '',
        'image': one,
      },
      {
        'text1': 'متجر',
        'text2': ' كلاسيك',
        'text3': ' يتمنى لك تجربة ممتعة.',
        'image': three,
      },
    ];
    final canPop = context.canPop();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              if (!canPop) {
                ref
                    .read(onBoardingNotifierProvider.notifier)
                    .setIsOnBoardingShown(isOnBoardingShown: true);
                context.goNamed(AppRoute.home.name);
              } else {
                context.pop();
              }
            },
            child: const Text('تخطي'),
          ),
        ],
        leading: onBoardingIndex == 0
            ? const SizedBox.shrink()
            : IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
              ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSmoothIndicator(
              curve: Curves.ease,
              activeIndex: onBoardingIndex,
              count: 3,
              effect: const ExpandingDotsEffect(
                spacing: 16,
                activeDotColor: Color(0xff9D331F),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                if (onBoardingIndex == 2) {
                  if (!canPop) {
                    ref
                        .read(onBoardingNotifierProvider.notifier)
                        .setIsOnBoardingShown(isOnBoardingShown: true);
                    context.goNamed(AppRoute.home.name);
                  } else {
                    context.pop();
                  }
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff9D331F),
                fixedSize: const Size(396, 64),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              child: Text(
                onBoardingIndex == 2 ? 'بدء التسوق' : 'التالي',
                style: appTheme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
      body: PageView.builder(
        itemCount: 3,
        onPageChanged: (value) {
          ref.read(onBoardingIndexNotifierProvider.notifier).index(value);
        },
        controller: pageController,
        itemBuilder: (context, index) {
          return OnBoardingItems(
            image: onBoardingList[index]['image']! as ScalableImage,
            text1: onBoardingList[index]['text1']! as String,
            text2: onBoardingList[index]['text2']! as String,
            text3: onBoardingList[index]['text3']! as String,
          );
        },
      ),
    );
  }
}

class OnBoardingItems extends StatelessWidget {
  const OnBoardingItems({
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    super.key,
  });

  final ScalableImage image;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScalableImageWidget(
              si: image,
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              text: TextSpan(
                text: text1,
                style: appTheme.textTheme.headlineSmall,
                children: [
                  TextSpan(
                    text: text2,
                    style: appTheme.textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: text3),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
