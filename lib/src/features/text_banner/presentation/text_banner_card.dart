import 'package:classic_shop/src/features/text_banner/presentation/text_banner.dart';
import 'package:classic_shop/src/features/text_banner/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextBannerCard extends HookConsumerWidget {
  const TextBannerCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final index = ref.watch(textBannerCardIndexProvider);
    final textBanners = ref.watch(textBannerNotifierProvider).map(
          initial: (_) => _.textBanners.entity[index],
          loadInProgress: (_) => _.textBanners.entity[index],
          loadSuccess: (_) => _.textBanners.entity[index],
          loadFailure: (_) => _.textBanners.entity[index],
        );
    return Center(
      child: Text(
        // '🔥 يوجد لدينا تخفيظات هائلة 🔥',
        textBanners.description,
        style: appTheme.textTheme.labelSmall?.copyWith(color: Colors.white),
      ),
    );
  }
}
