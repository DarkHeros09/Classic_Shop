import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_repository.dart';
import 'package:classic_shop/src/features/promotions/domain/combined_promotion.dart';
import 'package:classic_shop/src/features/promotions/domain/promotions_failure.dart';
import 'package:classic_shop/src/features/promotions/shared/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'promotions_notifier.freezed.dart';
part 'promotions_notifier.g.dart';

@freezed
class PromotionsState with _$PromotionsState {
  const PromotionsState._();
  const factory PromotionsState.initial(
    Fresh<List<CombinedPromotions>> promotions,
  ) = _Initial;
  const factory PromotionsState.loadInProgress(
    Fresh<List<CombinedPromotions>> promotions,
  ) = _LoadInProgress;
  const factory PromotionsState.loadSuccess(
    Fresh<List<CombinedPromotions>> promotions,
  ) = _LoadSuccess;
  const factory PromotionsState.loadFailure(
    Fresh<List<CombinedPromotions>> promotions,
    PromotionsFailure failure,
  ) = _LoadFailure;
}

@riverpod
class PromotionsNotifier extends _$PromotionsNotifier {
  late final PromotionsRepository _repository;
  @override
  PromotionsState build() {
    _repository = ref.watch(promotionsRepositoryProvider);
    return state = PromotionsState.initial(
      Fresh.yes([]),
    );
  }

  Future<void> getPromotions() async {
    // state = PromotionsState.loadFailure(
    //   state.promotions,
    //   const PromotionsFailure.api(404),
    // );
    state = PromotionsState.loadInProgress(state.promotions);
    final failureOrCategories = await _repository.getPromotions();
    state = failureOrCategories.fold(
      (l) => PromotionsState.loadFailure(state.promotions, l),
      (r) => PromotionsState.loadSuccess(Fresh.yes(r.entity.toCombinedList())),
    );
  }
}
