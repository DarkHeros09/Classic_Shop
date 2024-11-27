import 'package:classic_shop/src/helpers/locale_extension.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class EmptyNotificationsPage extends HookConsumerWidget {
  const EmptyNotificationsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noData = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere((element) => element.$1 == SvgAssets.noData.name)
            .$2,
      ),
    );
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScalableImageWidget(
                si: noData,
                scale: .2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(context.loc.no_notification),
            ],
          ),
        ),
      ),
    );
  }
}
