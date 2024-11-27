import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_item_dto.dart';
import 'package:classic_shop/src/features/wish_list/data/wish_list_repository.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item.dart';
import 'package:classic_shop/src/features/wish_list/domain/wish_list_item_failure.dart';
import 'package:classic_shop/src/features/wish_list/shared/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wish_list_notifier.freezed.dart';
part 'wish_list_notifier.g.dart';

@freezed
class WishListState with _$WishListState {
  const WishListState._();
  const factory WishListState.initial(
    Fresh<List<WishListItem>> wishListItems,
  ) = _Initial;
  const factory WishListState.loadInProgress(
    Fresh<List<WishListItem>> wishListItems,
  ) = _LoadInProgress;
  const factory WishListState.loadSuccess(
    Fresh<List<WishListItem>> wishListItems,
  ) = _LoadSuccess;
  const factory WishListState.loadFailure(
    Fresh<List<WishListItem>> wishListItems,
    WishListItemFailure failure,
  ) = _LoadFailure;
}

@Riverpod(keepAlive: true)
class WishListNotifier extends _$WishListNotifier {
  late final WishListRepository _repository;
  @override
  WishListState build() {
    _repository = ref.watch(wishListRepositoryProvider);
    return state = WishListState.initial(Fresh.yes([]));
  }

  Future<void> fetchWishList() async {
    // Maybe remove in progress
    state = WishListState.loadInProgress(state.wishListItems);
    final wishListItemsOrFailure = await _repository.fetchWishList();
    state = await wishListItemsOrFailure.fold(
      (l) => WishListState.loadFailure(state.wishListItems, l),
      (r) async {
        // await _repository.setWishList(r.entity);
        return WishListState.loadSuccess(r);
      },
    );
  }

  Future<void> createWishListItem(WishListItem wishListItem) async {
    state = WishListState.loadInProgress(state.wishListItems);
    final dto = WishListItemDTO.fromDomain(wishListItem);
    // TODO: make it return a a value
    final failureOrCreated = await _repository.createWishListItem(dto: dto);
    state = await failureOrCreated.fold(
      (l) => WishListState.loadFailure(state.wishListItems, l),
      (r) {
        fetchWishList();
        return WishListState.loadSuccess(Fresh.yes([]));
      },
    );
    // state = WishListState.loadSuccess(state.wishListItems);
  }

  Future<void> updateWishList(WishListItem wishListItem) async {
    // state = WishListState.loadInProgress(state.wishListItems);
    final dto = WishListItemDTO.fromDomain(wishListItem);
    final updatedOrFailure = await _repository.updateWishListItem(dto);

    updatedOrFailure.fold(
      (l) => null,
      (r) {
        final i = state.wishListItems.entity.indexWhere(
          (element) => element.productItemId == wishListItem.productItemId,
        );
        state.wishListItems.entity[i] = r;
        state = WishListState.loadSuccess(state.wishListItems);
      },
    );
  }

  Future<void> deleteWishListItem(WishListItem wishListItem) async {
    final dto = WishListItemDTO.fromDomain(wishListItem);
    final isDeleted = await _repository.deleteWishListItem(dto);

    if (isDeleted) {
      state.wishListItems.entity.removeWhere(
        (element) => element.productItemId == wishListItem.productItemId,
      );
    }

    state = WishListState.loadSuccess(state.wishListItems);
  }

  Future<void> deleteAllWishListItems() async {
    state = WishListState.loadInProgress(state.wishListItems);
    await _repository.deleteAllWishListItems();
    state = WishListState.loadSuccess(Fresh.yes([]));
  }
  // Future<void> syncWishList() async {
  //   await _repository.syncWishListData();
  // }
}
