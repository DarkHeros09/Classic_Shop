import 'package:classic_shop/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'assets.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
List<(String, ScalableImage)> siAssets(Ref ref) {
  return ref.watch(initAssetsProvider()).requireValue;
}

@Riverpod(keepAlive: true, dependencies: [])
List<(String, ScalableImage)> darkSiAssets(Ref ref) {
  return ref.watch(initAssetsProvider(isDarkMode: true)).requireValue;
}

enum SvgAssets {
  logo,
  bell,
  onBoarding1,
  onBoarding2,
  onBoarding3,
  onlineShopping,
  success,
  home,
  homeSelected,
  category,
  categorySelected,
  cart,
  cartSelected,
  cartButtonIcon,
  cartAppBarIcon,
  profile,
  profileSelected,
  heart,
  heartSelected,
  pin,
  fileText,
  gear,
  activity,
  folderOpen,
  logout,
  priceTag,
  signUp,
  signIn,
  addToCart,
  addToWishList,
  searching,
  noData,
  slidersHoriz,
  error,
  enterOtp,
  changePassword,
  forgotPassword,
}

@Riverpod(keepAlive: true)
FutureOr<List<(String, ScalableImage)>> initAssets(
  Ref ref, {
  bool isDarkMode = false,
}) async {
  final siAssets = [
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.logoSi,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.bellSelected,
      currentColor: isDarkMode ? Colors.black : Colors.white,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.eCommerceCropped,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.onlineShoppingCropped,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.storefrontCropped,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.undrawOnlineShoppingSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.successSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.homeSelected,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.home,
      currentColor: Colors.grey,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.categorySelected,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.category,
      currentColor: Colors.grey,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.cartSelected,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.cart,
      currentColor: Colors.grey,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.cartSelected,
      currentColor: Colors.white,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.cart,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.userCircleSelected,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.userCircle,
      currentColor: Colors.grey,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.heartSelected,
      currentColor: Colors.red,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.heart,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.pin,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.fileText,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.gear,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.activity,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.folderOpen,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.logout,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.priceTag,
      currentColor: isDarkMode ? Colors.black : Colors.white,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.tabletLoginPanaSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.signInBroSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.undrawAddToCartReWrdoCroppedSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.undrawWishlistReM7tvCroppedSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.undrawSearchingRe3ra9CroppedSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.noDataSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.slidersHorizSi,
      currentColor: isDarkMode ? Colors.white : Colors.black,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.errorBrokenRobotSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.enterOTPBroSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.myPasswordPanaSi,
    ),
    ScalableImage.fromSIAsset(
      rootBundle,
      Assets.forgotPasswordPanaSi,
    ),
  ];

  final assetsPath = [
    SvgAssets.logo.name,
    SvgAssets.bell.name,
    SvgAssets.onBoarding1.name,
    SvgAssets.onBoarding2.name,
    SvgAssets.onBoarding3.name,
    SvgAssets.onlineShopping.name,
    SvgAssets.success.name,
    SvgAssets.homeSelected.name,
    SvgAssets.home.name,
    SvgAssets.categorySelected.name,
    SvgAssets.category.name,
    SvgAssets.cartSelected.name,
    SvgAssets.cart.name,
    SvgAssets.cartButtonIcon.name,
    SvgAssets.cartAppBarIcon.name,
    SvgAssets.profileSelected.name,
    SvgAssets.profile.name,
    SvgAssets.heartSelected.name,
    SvgAssets.heart.name,
    SvgAssets.pin.name,
    SvgAssets.fileText.name,
    SvgAssets.gear.name,
    SvgAssets.activity.name,
    SvgAssets.folderOpen.name,
    SvgAssets.logout.name,
    SvgAssets.priceTag.name,
    SvgAssets.signUp.name,
    SvgAssets.signIn.name,
    SvgAssets.addToCart.name,
    SvgAssets.addToWishList.name,
    SvgAssets.searching.name,
    SvgAssets.noData.name,
    SvgAssets.slidersHoriz.name,
    SvgAssets.error.name,
    SvgAssets.enterOtp.name,
    SvgAssets.changePassword.name,
    SvgAssets.forgotPassword.name,
  ];

  final initializedSiAssets = await Future.wait(siAssets);
  final assets = <(String, ScalableImage)>[];

  for (var i = 0; i < siAssets.length; i++) {
    assets.add((assetsPath[i], initializedSiAssets[i]));
  }

  return assets;
}
