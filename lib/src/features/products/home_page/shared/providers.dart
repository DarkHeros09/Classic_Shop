import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/application/promoted_products_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homePageNotifierProvider =
    NotifierProvider.autoDispose<HomePageNotifier, HomePageState>(
  HomePageNotifier.new,
);

final promotedProductsNotifierProvider = NotifierProvider.autoDispose<
    PromotedProductsNotifier, PromotedProductsState>(
  PromotedProductsNotifier.new,
);
