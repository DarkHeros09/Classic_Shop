import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

////////* Presentation ///////////////

@Riverpod(dependencies: [])
int homepageProductsIndex(Ref ref, ProductType? type) {
  throw UnimplementedError();
}
