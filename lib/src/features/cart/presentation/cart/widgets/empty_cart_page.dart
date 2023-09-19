import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class EmptyCartPage extends HookConsumerWidget {
  const EmptyCartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final wishList = ref.watch(
      siAssetsProvider.select(
        (value) => value
            .singleWhere(
              (element) => element.$1 == SvgAssets.addToCart.name,
            )
            .$2,
      ),
    );
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 64,
            ),
            ScalableImageWidget(
              si: wishList,
              scale: .4,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'سيتم حفظ مفضلاتك هنا',
              style: appTheme.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '''حالياً ليس لديك مفضلات. ابدأ بالتسوق في المتجر لإضافة ما يعجبك.''',
              textAlign: TextAlign.center,
              style: appTheme.textTheme.bodyLarge!.copyWith(
                color: const Color(0xff7D7979),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff9D331F),
                fixedSize: const Size(222, 64),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              child: Text(
                'البدء في إضافة المنتجات',
                style: appTheme.textTheme.labelLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
