import 'package:classic_shop/src/features/brands/data/brand_repository.dart';
import 'package:classic_shop/src/features/brands/domain/brand.dart';
import 'package:classic_shop/src/features/brands/domain/brand_failure.dart';
import 'package:classic_shop/src/features/brands/shared/provider.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'brand_notifier.freezed.dart';
part 'brand_notifier.g.dart';

@freezed
class BrandState with _$BrandState {
  const BrandState._();
  const factory BrandState.initial(
    Fresh<List<Brand>> brands,
  ) = _Initial;
  const factory BrandState.loadInProgress(
    Fresh<List<Brand>> brands,
  ) = _LoadInProgress;
  const factory BrandState.loadSuccess(
    Fresh<List<Brand>> brands,
  ) = _LoadSuccess;
  const factory BrandState.loadFailure(
    Fresh<List<Brand>> brands,
    BrandFailure failure,
  ) = _LoadFailure;
}

@riverpod
class BrandNotifier extends _$BrandNotifier {
  late final BrandRepository _repository;
  @override
  BrandState build() {
    _repository = ref.watch(brandRepositoryProvider);
    return state = BrandState.initial(Fresh.yes([]));
  }

  Future<void> getBrands() async {
    // state = BrandState.loadFailure(
    //   state.brands,
    //   const BrandFailure.api(404),
    // );
    state = BrandState.loadInProgress(state.brands);
    final failureOrBrands = await _repository.fetchBrand();
    state = failureOrBrands.fold(
      (l) => BrandState.loadFailure(state.brands, l),
      BrandState.loadSuccess,
    );
  }
}
