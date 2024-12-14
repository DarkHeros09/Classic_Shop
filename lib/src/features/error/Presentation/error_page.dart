import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class ErrorPage extends HookConsumerWidget {
  const ErrorPage({this.showHomeButton = true, super.key});

  final bool showHomeButton;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final error = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.error.name,
            )
            .$2,
      ),
    );
    final homeIcon = ref.watch(
      darkSiAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.homeSelected.name,
            )
            .$2,
      ),
    );
    return Scaffold(
      bottomNavigationBar: showHomeButton
          ? Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff9D331F),
                  disabledBackgroundColor: Colors.grey,
                  fixedSize: const Size(double.maxFinite, 64),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                onPressed: () async {
                  context.goNamed(AppRoute.home.name);
                },
                icon: ScalableImageWidget(si: homeIcon),
                label: Text(
                  'العودة إلى المتجر',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            )
          : null,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                ScalableImageWidget(
                  si: error,
                  scale: .4,
                ),
                Text(
                  'عذرًا! حدث خطأ ما.',
                  style: appTheme.textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
