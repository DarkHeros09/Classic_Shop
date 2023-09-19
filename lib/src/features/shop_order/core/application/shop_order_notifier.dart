import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/auth/shared/providers.dart';
import 'package:classic_shop/src/features/core/data/pagination_config.dart';
import 'package:classic_shop/src/features/core/domain/fresh.dart';
import 'package:classic_shop/src/features/shop_order/core/data/shop_order_repository.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order_failure.dart';
import 'package:classic_shop/src/features/shop_order/core/shared/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'shop_order_notifier.freezed.dart';

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

// class ShopOrdersNotifier extends AutoDisposeNotifier<ShopOrdersState> {
//   late final ShopOrderRepository _repository;
//   late final AuthNotifier _authNotifier;

//   @override
//   ShopOrdersState build() {
//     _authNotifier = ref.watch(authNotifierProvider.notifier);
//     _repository = ref.watch(shopOrderRepositoryProvider);
//     return state = ShopOrdersState.initial(
//       Fresh.yes([]),
//       Fresh.yes([]),
//       Fresh.yes([]),
//       Fresh.yes([]),
//     );
//   }

//   int _page = 1;
//   int _lastItemId = 0;

//   int _pageProcessing = 1;
//   int _lastItemIdProcessing = 0;

//   int _pageDelivered = 1;
//   int _lastItemIdDelivered = 0;

//   int _pageCancelled = 1;
//   int _lastItemIdCancelled = 0;

//   Future<void> getShopOrders({
//     String? orderStatus,
//     int? pageSize,
//   }) async {
//     // state = ShopOrdersState.loadFailure(
//     //   state.shopOrders,
//     //   const ProductFailure.api(404),
//     // );
//     state = ShopOrdersState.loadInProgress(
//       state.shopOrders,
//       state.shopOrdersProcessing,
//       state.shopOrdersDelivered,
//       state.shopOrdersCancelled,
//       PaginationConfig.itemsPerPage,
//     );
//     final user = _authNotifier.currentUser;
//     if (user != null) {
//       switch (orderStatus) {
//         case null:
//           _page = 1;
//           _lastItemId = 0;
//         case 'تحت الإجراء':
//           _pageProcessing = 1;
//           _lastItemIdProcessing = 0;
//         case 'تم التسليم':
//           _pageDelivered = 1;
//           _lastItemIdDelivered = 0;
//         case 'ملغي':
//           _pageCancelled = 1;
//           _lastItemIdCancelled = 0;
//       }
//       final failureOrProducts = switch (orderStatus) {
//         null => await _repository.getShopOrders(
//             _page,
//             userId: user.id,
//             orderStatus: orderStatus,
//             pageSize: pageSize,
//           ),
//         'تحت الإجراء' => await _repository.getShopOrders(
//             _pageProcessing,
//             userId: user.id,
//             orderStatus: orderStatus,
//             pageSize: pageSize,
//           ),
//         'تم التسليم' => await _repository.getShopOrders(
//             _page,
//             userId: user.id,
//             orderStatus: orderStatus,
//             pageSize: pageSize,
//           ),
//         'ملغي' => await _repository.getShopOrders(
//             _page,
//             userId: user.id,
//             orderStatus: orderStatus,
//             pageSize: pageSize,
//           ),
//         _ => await _repository.getShopOrders(
//             _page,
//             userId: user.id,
//             orderStatus: orderStatus,
//             pageSize: pageSize,
//           ),
//       };
//       state = failureOrProducts.fold(
//         (l) => ShopOrdersState.loadFailure(
//           state.shopOrders,
//           state.shopOrdersProcessing,
//           state.shopOrdersDelivered,
//           state.shopOrdersCancelled,
//           l,
//         ),
//         (r) {
//           late final ShopOrdersState stateResult;
//           switch (orderStatus) {
//             case null:
//               _page++;
//               _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrders.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 state.shopOrdersProcessing,
//                 state.shopOrdersDelivered,
//                 state.shopOrdersCancelled,
//                 isNextPageAvailable: r.isNextPageAvailable ?? false,
//               );
//             case 'تحت الإجراء':
//               _pageProcessing++;
//               _lastItemIdProcessing = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 state.shopOrders,
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrdersProcessing.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 state.shopOrdersDelivered,
//                 state.shopOrdersCancelled,
//                 isNextPageAvailableProcessing: r.isNextPageAvailable ?? false,
//               );
//             case 'تم التسليم':
//               _pageDelivered++;
//               _lastItemIdDelivered = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 state.shopOrders,
//                 state.shopOrdersProcessing,
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrdersDelivered.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 state.shopOrdersCancelled,
//                 isNextPageAvailableDelivered: r.isNextPageAvailable ?? false,
//               );
//             case 'ملغي':
//               _pageCancelled++;
//               _lastItemIdCancelled = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 state.shopOrders,
//                 state.shopOrdersProcessing,
//                 state.shopOrdersDelivered,
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrdersCancelled.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 isNextPageAvailableCancelled: r.isNextPageAvailable ?? false,
//               );
//           }

//           return stateResult;
//         },
//       );
//     }
//   }

//   Future<void> getShopOrdersNextPage({
//     String? orderStatus,
//     int? pageSize,
//   }) async {
//     // state = ShopOrdersState.loadFailure(
//     //   state.shopOrders,
//     //   const ProductFailure.api(404),
//     // );
//     state = ShopOrdersState.loadInProgress(
//       state.shopOrders,
//       state.shopOrdersProcessing,
//       state.shopOrdersDelivered,
//       state.shopOrdersCancelled,
//       PaginationConfig.itemsPerPage,
//     );
//     debugPrint('_lastItemId: $_lastItemId');
//     debugPrint('_lastItemIdPage: $_page');
//     final user = _authNotifier.currentUser;
//     if (user != null) {
//       final failureOrProducts = switch (orderStatus) {
//         null => await _repository.getShopOrdersNextPage(
//             _lastItemId,
//             _page,
//             userId: user.id,
//           ),
//         'تحت الإجراء' => await _repository.getShopOrdersNextPage(
//             _lastItemIdProcessing,
//             _pageProcessing,
//             userId: user.id,
//           ),
//         'تم التسليم' => await _repository.getShopOrdersNextPage(
//             _lastItemIdDelivered,
//             _pageDelivered,
//             userId: user.id,
//           ),
//         'ملغي' => await _repository.getShopOrdersNextPage(
//             _lastItemIdCancelled,
//             _pageCancelled,
//             userId: user.id,
//           ),
//         _ => await _repository.getShopOrdersNextPage(
//             _lastItemId,
//             _page,
//             userId: user.id,
//           ),
//       };
//       state = failureOrProducts.fold(
//         (l) => ShopOrdersState.loadFailure(
//           state.shopOrders,
//           state.shopOrdersProcessing,
//           state.shopOrdersDelivered,
//           state.shopOrdersCancelled,
//           l,
//         ),
//         (r) {
//           late final ShopOrdersState stateResult;
//           switch (orderStatus) {
//             case null:
//               _page++;
//               _lastItemId = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrders.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 state.shopOrdersProcessing,
//                 state.shopOrdersDelivered,
//                 state.shopOrdersCancelled,
//                 isNextPageAvailable: r.isNextPageAvailable ?? false,
//               );
//             case 'تحت الإجراء':
//               _pageProcessing++;
//               _lastItemIdProcessing = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 state.shopOrders,
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrdersProcessing.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 state.shopOrdersDelivered,
//                 state.shopOrdersCancelled,
//                 isNextPageAvailable: r.isNextPageAvailable ?? false,
//               );
//             case 'تم التسليم':
//               _pageDelivered++;
//               _lastItemIdDelivered = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 state.shopOrders,
//                 state.shopOrdersProcessing,
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrdersDelivered.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 state.shopOrdersCancelled,
//                 isNextPageAvailable: r.isNextPageAvailable ?? false,
//               );
//             case 'ملغي':
//               _pageCancelled++;
//               _lastItemIdCancelled = r.entity.isEmpty ? 0 : r.entity.last.id;
//               stateResult = ShopOrdersState.loadSuccess(
//                 state.shopOrders,
//                 state.shopOrdersProcessing,
//                 state.shopOrdersDelivered,
//                 r.copyWith(
//                   entity: [
//                     ...state.shopOrdersCancelled.entity,
//                     ...r.entity,
//                   ],
//                 ),
//                 isNextPageAvailable: r.isNextPageAvailable ?? false,
//               );
//           }

//           return stateResult;
//         },
//       );
//     }
//   }
// }

class ShopOrdersNotifier extends AutoDisposeNotifier<ShopOrdersState> {
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

class ShopOrdersProcessingNotifier
    extends AutoDisposeNotifier<ShopOrdersState> {
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

class ShopOrdersDeliveredNotifier extends AutoDisposeNotifier<ShopOrdersState> {
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

class ShopOrdersCancelledNotifier extends AutoDisposeNotifier<ShopOrdersState> {
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
