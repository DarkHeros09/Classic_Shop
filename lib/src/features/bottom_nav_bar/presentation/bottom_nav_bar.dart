import 'package:classic_shop/src/features/cart/shared/providers.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    // final bottomNavBarIndex = ref.watch(bottomNavBarNotifierProvider);
    final child = ref.watch(widgetProvider);
    final homeIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 0
                        ? element.$1 == SvgAssets.homeSelected.name
                        : element.$1 == SvgAssets.home.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 0
                        ? element.$1 == SvgAssets.homeSelected.name
                        : element.$1 == SvgAssets.home.name,
                  )
                  .$2,
            ),
          );
    final categoryIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 1
                        ? element.$1 == SvgAssets.categorySelected.name
                        : element.$1 == SvgAssets.category.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 1
                        ? element.$1 == SvgAssets.categorySelected.name
                        : element.$1 == SvgAssets.category.name,
                  )
                  .$2,
            ),
          );
    final cartIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 2
                        ? element.$1 == SvgAssets.cartSelected.name
                        : element.$1 == SvgAssets.cart.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 2
                        ? element.$1 == SvgAssets.cartSelected.name
                        : element.$1 == SvgAssets.cart.name,
                  )
                  .$2,
            ),
          );
    final profileIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 3
                        ? element.$1 == SvgAssets.profileSelected.name
                        : element.$1 == SvgAssets.profile.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => child.currentIndex == 3
                        ? element.$1 == SvgAssets.profileSelected.name
                        : element.$1 == SvgAssets.profile.name,
                  )
                  .$2,
            ),
          );

    final cartItemState = ref.watch(
      cartNotifierProvider.select((value) => value.cartItems.entity.length),
    );
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(0, -2),
            color: Color(0x24000000),
          ),
        ],
      ),
      child: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          onTap: (value) {
            switch (value) {
              // case 0:
              //   ref
              //       .read(listProductsNotifierProvider.notifier)
              //       .getProductsPage();
              case 2:
                ref.read(cartNotifierProvider.notifier).fetchCart();
            }
            child.goBranch(
              value,
              initialLocation: true,
            );
          },
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: GoogleFonts.notoKufiArabic(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          unselectedLabelStyle: GoogleFonts.notoKufiArabic(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          showUnselectedLabels: true,
          selectedIconTheme: appTheme.iconTheme,
          selectedItemColor: isDarkMode ? Colors.white : Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: child.currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: ScalableImageWidget(si: homeIcon),
              label: 'المتجر',
            ),
            BottomNavigationBarItem(
              icon: ScalableImageWidget(si: categoryIcon),
              label: 'التصنيفات',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                isLabelVisible: cartItemState != 0,
                label: Text(cartItemState.toString()),
                offset: const Offset(20, -8),
                child: ScalableImageWidget(si: cartIcon),
              ),
              label: 'الحقيبة',
            ),
            BottomNavigationBarItem(
              icon: ScalableImageWidget(si: profileIcon),
              label: 'حسابي',
            ),
          ],
        ),
      ),
    );
  }
}

class ScaffoldWithBottomNavBar extends ConsumerWidget {
  const ScaffoldWithBottomNavBar({super.key});

  // final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final child = ref.watch(widgetProvider);
    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
