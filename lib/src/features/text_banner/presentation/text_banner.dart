import 'package:carousel_slider/carousel_slider.dart';
import 'package:classic_shop/src/features/text_banner/application/text_banner_notifier.dart';
import 'package:classic_shop/src/features/text_banner/presentation/loading_text_banner_card.dart';
import 'package:classic_shop/src/features/text_banner/presentation/text_banner_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final textBannerCardIndexProvider = Provider<int>((_) {
  throw UnimplementedError();
});

class TextBanner extends StatefulHookConsumerWidget {
  const TextBanner({super.key});

  @override
  ConsumerState<TextBanner> createState() => _TextBannerState();
}

class _TextBannerState extends ConsumerState<TextBanner> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(textBannerNotifierProvider.notifier).fetchTextBanner();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(textBannerNotifierProvider);
    return SliverToBoxAdapter(
      child: state.map(
        initial: (_) => const LoadingTextBannerCard(),
        loadInProgress: (_) => const LoadingTextBannerCard(),
        loadSuccess: (_) => const _TextBanner(),
        loadFailure: (_) => const _TextBanner(),
      ),
    );
  }
}

class _TextBanner extends HookConsumerWidget {
  const _TextBanner();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemCount = ref.watch(
      textBannerNotifierProvider
          .select((value) => value.textBanners.entity.length),
    );
    return itemCount > 0
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 4),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: CarouselSlider.builder(
                itemCount: itemCount,
                itemBuilder: (context, index, __) {
                  return ProviderScope(
                    key: UniqueKey(),
                    overrides: [
                      textBannerCardIndexProvider.overrideWithValue(index),
                    ],
                    child: const TextBannerCard(),
                  );
                },
                options: CarouselOptions(
                  autoPlayInterval: const Duration(seconds: 10),
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  height: 16,
                  autoPlayCurve: Easing.legacyAccelerate,
                  viewportFraction: 1,
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
