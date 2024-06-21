import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class CheckoutSuccess extends ConsumerWidget {
  const CheckoutSuccess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final success = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere((element) => element.$1 == SvgAssets.success.name)
            .$2,
      ),
    );
    // final bottomNavBarIndex = ref.watch(bottomNavBarNotifierProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScalableImageWidget(si: success),
              const SizedBox(
                height: 32,
              ),
              Text(
                'تم الطلب بالنجاح',
                style: appTheme.textTheme.bodyLarge!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '''سيتم التواصل معك فور وصول المنتج.''',
                textAlign: TextAlign.center,
                style: appTheme.textTheme.bodyLarge!.copyWith(
                  color: const Color(0xff7D7979),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () async {
                  // bottomNavBarIndex.index = 0;
                  context.goNamed(AppRoute.home.name);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff9D331F),
                  fixedSize: const Size(222, 64),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: Text(
                  'تصفح الطلب',
                  style: appTheme.textTheme.labelLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
