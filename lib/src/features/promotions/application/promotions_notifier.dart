import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/promotions/data/promotions_repository.dart';
import 'package:classic_shop/src/features/promotions/domain/promotions.dart';
import 'package:classic_shop/src/features/promotions/domain/promotions_failure.dart';
import 'package:classic_shop/src/features/promotions/shared/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'promotions_notifier.freezed.dart';

@freezed
class PromotionsState with _$PromotionsState {
  const PromotionsState._();
  const factory PromotionsState.initial(
    Fresh<Promotions> promotions,
  ) = _Initial;
  const factory PromotionsState.loadInProgress(
    Fresh<Promotions> promotions,
  ) = _LoadInProgress;
  const factory PromotionsState.loadSuccess(
    Fresh<Promotions> promotions,
  ) = _LoadSuccess;
  const factory PromotionsState.loadFailure(
    Fresh<Promotions> promotions,
    PromotionsFailure failure,
  ) = _LoadFailure;
}

class PromotionsNotifier extends AutoDisposeNotifier<PromotionsState> {
  late final PromotionsRepository _repository;
  @override
  PromotionsState build() {
    _repository = ref.watch(promotionsRepositoryProvider);
    return state = PromotionsState.initial(
      Fresh.yes(
        const Promotions(
          productPromotions: null,
          brandPromotions: null,
          categoryPromotions: null,
        ),
      ),
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
      PromotionsState.loadSuccess,
    );
  }
}
