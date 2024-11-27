import 'package:classic_shop/src/features/categories/data/category_repository.dart';
import 'package:classic_shop/src/features/categories/domain/category.dart';
import 'package:classic_shop/src/features/categories/domain/category_failure.dart';
import 'package:classic_shop/src/features/categories/shared/provider.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_notifier.freezed.dart';
part 'category_notifier.g.dart';

@freezed
class CategoryState with _$CategoryState {
  const CategoryState._();
  const factory CategoryState.initial(
    Fresh<List<Category>> categories,
  ) = _Initial;
  const factory CategoryState.loadInProgress(
    Fresh<List<Category>> categories,
  ) = _LoadInProgress;
  const factory CategoryState.loadSuccess(
    Fresh<List<Category>> categories,
  ) = _LoadSuccess;
  const factory CategoryState.loadFailure(
    Fresh<List<Category>> categories,
    CategoryFailure failure,
  ) = _LoadFailure;
}

@riverpod
class CategoryNotifier extends _$CategoryNotifier {
  late final CategoryRepository _repository;
  @override
  CategoryState build() {
    _repository = ref.watch(categoryRepositoryProvider);
    return state = CategoryState.initial(Fresh.yes([]));
  }

  Future<void> getCategories() async {
    // state = CategoryState.loadFailure(
    //   state.categories,
    //   const CategoryFailure.api(404),
    // );
    state = CategoryState.loadInProgress(state.categories);
    final failureOrCategories = await _repository.fetchCategory();
    state = failureOrCategories.fold(
      (l) => CategoryState.loadFailure(state.categories, l),
      CategoryState.loadSuccess,
    );
  }
}
