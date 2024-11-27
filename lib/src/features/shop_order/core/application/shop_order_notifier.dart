import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_repository.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order_failure.dart';
import 'package:classic_shop/src/features/shop_order/core/shared/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shop_order_notifier.freezed.dart';
part 'shop_order_notifier.g.dart';

@freezed
class ShopOrdersState with _$ShopOrdersState {
  const ShopOrdersState._();
  const factory ShopOrdersState.initial(
    Fresh<List<ShopOrder>> shopOrders,
    // Fresh<List<ShopOrder>> shopOrdersProcessing,
    // Fresh<List<ShopOrder>> shopOrdersDelivered,
    // Fresh<List<ShopOrder>> shopOrdersCancelled,
  ) = _Initial;
  const factory ShopOrdersState.loadInProgress(
    Fresh<List<ShopOrder>> shopOrders,
    // Fresh<List<ShopOrder>> shopOrdersProcessing,
    // Fresh<List<ShopOrder>> shopOrdersDelivered,
    // Fresh<List<ShopOrder>> shopOrdersCancelled,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory ShopOrdersState.loadSuccess(
    Fresh<List<ShopOrder>> shopOrders,
    // Fresh<List<ShopOrder>> shopOrdersProcessing,
    // Fresh<List<ShopOrder>> shopOrdersDelivered,
    // Fresh<List<ShopOrder>> shopOrdersCancelled,
    {
    required bool isNextPageAvailable,
    // bool? isNextPageAvailableProcessing,
    // bool? isNextPageAvailableDelivered,
    // bool? isNextPageAvailableCancelled,
  }) = _LoadSuccess;
  const factory ShopOrdersState.loadFailure(
    Fresh<List<ShopOrder>> shopOrders,
    // Fresh<List<ShopOrder>> shopOrdersProcessing,
    // Fresh<List<ShopOrder>> shopOrdersDelivered,
    // Fresh<List<ShopOrder>> shopOrdersCancelled,
    ShopOrderFailure failure,
  ) = _LoadFailure;
}

@riverpod
class ShopOrdersNotifier extends _$ShopOrdersNotifier {
  late final ShopOrderRepository _repository;
  late final AuthNotifier _authNotifier;

  @override
  ShopOrdersState build() {
    _authNotifier = ref.watch(authNotifierProvider.notifier);
    _repository = ref.watch(shopOrderRepositoryProvider);
    return state = ShopOrdersState.initial(Fresh.yes([]));
  }

  int _page = 1;
  int _lastItemId = 0;

  Future<void> getShopOrders({
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      _lastItemId = 0;
      final failureOrProducts = await _repository.getShopOrders(
        _page = 1,
        userId: user.id,
        pageSize: pageSize,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }

  Future<void> getShopOrdersNextPage({
    // String? orderStatus,
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      final failureOrProducts = await _repository.getShopOrdersNextPage(
        _lastItemId,
        _page,
        userId: user.id,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }
}

@riverpod
class ShopOrdersProcessingNotifier extends _$ShopOrdersProcessingNotifier {
  late final ShopOrderRepository _repository;
  late final AuthNotifier _authNotifier;

  @override
  ShopOrdersState build() {
    _authNotifier = ref.watch(authNotifierProvider.notifier);
    _repository = ref.watch(shopOrderRepositoryProvider);
    return state = ShopOrdersState.initial(Fresh.yes([]));
  }

  int _page = 1;
  int _lastItemId = 0;

  Future<void> getShopOrdersProcessing({
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      _lastItemId = 0;
      final failureOrProducts = await _repository.getShopOrders(
        _page = 1,
        userId: user.id,
        orderStatus: 'تحت الإجراء',
        pageSize: pageSize,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }

  Future<void> getShopOrdersProcessingNextPage({
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      final failureOrProducts = await _repository.getShopOrdersNextPage(
        _lastItemId,
        _page,
        orderStatus: 'تحت الإجراء',
        userId: user.id,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }
}

@riverpod
class ShopOrdersDeliveredNotifier extends _$ShopOrdersDeliveredNotifier {
  late final ShopOrderRepository _repository;
  late final AuthNotifier _authNotifier;

  @override
  ShopOrdersState build() {
    _authNotifier = ref.watch(authNotifierProvider.notifier);
    _repository = ref.watch(shopOrderRepositoryProvider);
    return state = ShopOrdersState.initial(Fresh.yes([]));
  }

  int _page = 1;
  int _lastItemId = 0;

  Future<void> getShopOrdersDelivered({
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      _lastItemId = 0;
      final failureOrProducts = await _repository.getShopOrders(
        _page = 1,
        userId: user.id,
        orderStatus: 'تم التسليم',
        pageSize: pageSize,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }

  Future<void> getShopOrdersDeliveredNextPage({
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      final failureOrProducts = await _repository.getShopOrdersNextPage(
        _lastItemId,
        _page,
        orderStatus: 'تم التسليم',
        userId: user.id,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }
}

@riverpod
class ShopOrdersCancelledNotifier extends _$ShopOrdersCancelledNotifier {
  late final ShopOrderRepository _repository;
  late final AuthNotifier _authNotifier;

  @override
  ShopOrdersState build() {
    _authNotifier = ref.watch(authNotifierProvider.notifier);
    _repository = ref.watch(shopOrderRepositoryProvider);
    return state = ShopOrdersState.initial(Fresh.yes([]));
  }

  int _page = 1;
  int _lastItemId = 0;

  Future<void> getShopOrdersCancelled({
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      _lastItemId = 0;
      final failureOrProducts = await _repository.getShopOrders(
        _page = 1,
        userId: user.id,
        orderStatus: 'ملغي',
        pageSize: pageSize,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }

  Future<void> getShopOrdersCancelledNextPage({
    int? pageSize,
  }) async {
    // state = ShopOrdersState.loadFailure(
    //   state.shopOrders,
    //   const ProductFailure.api(404),
    // );
    final user = _authNotifier.currentUser;
    if (user != null) {
      state = ShopOrdersState.loadInProgress(
        state.shopOrders,
        PaginationConfig.itemsPerPage,
      );
      final failureOrProducts = await _repository.getShopOrdersNextPage(
        _lastItemId,
        _page,
        orderStatus: 'ملغي',
        userId: user.id,
      );
      state = failureOrProducts.fold(
        (l) => ShopOrdersState.loadFailure(state.shopOrders, l),
        (r) {
          _page++;
          _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
          return ShopOrdersState.loadSuccess(
            r.copyWith(
              entity: [
                ...state.shopOrders.entity,
                ...r.entity,
              ],
            ),
            isNextPageAvailable: r.isNextPageAvailable ?? false,
          );
        },
      );
    }
  }
}
