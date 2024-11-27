import 'package:classic_shop/src/features/shop_order/core/application/shop_order_notifier.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/shop_order_list_cancelled.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/shop_order_list_delivered.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/shop_order_list_processing.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/widgets/loading_shop_order_card.dart';
import 'package:classic_shop/src/helpers/super_sliver_list_separated.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ShopOrder2Page extends StatefulHookConsumerWidget {
  const ShopOrder2Page({super.key});

  @override
  ConsumerState<ShopOrder2Page> createState() => _ShopOrder2PageState();
}

class _ShopOrder2PageState extends ConsumerState<ShopOrder2Page> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.wait([
        ref.read(shopOrdersNotifierProvider.notifier).getShopOrders(),
        ref
            .read(shopOrdersProcessingNotifierProvider.notifier)
            .getShopOrdersProcessing(),
        ref
            .read(shopOrdersDeliveredNotifierProvider.notifier)
            .getShopOrdersDelivered(),
        ref
            .read(shopOrdersCancelledNotifierProvider.notifier)
            .getShopOrdersCancelled(),
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final controller = useScrollController();
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            controller: controller,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                    context,
                  ),
                  sliver: SliverAppBar(
                    centerTitle: true,
                    title: Text(
                      'الطلبات',
                      style: appTheme.textTheme.headlineSmall,
                    ),
                    pinned: true,
                    bottom: PreferredSize(
                      preferredSize: const Size(double.infinity, 60),
                      child: Column(
                        children: [
                          TabBar(
                            dividerColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            indicatorPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            indicator: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
                              color: isDarkMode
                                  ? const Color(0xFFDDDDDD)
                                  : const Color(0xFF121212),
                            ),
                            labelColor:
                                isDarkMode ? Colors.black : Colors.white,
                            unselectedLabelColor:
                                isDarkMode ? Colors.white : Colors.black,
                            labelStyle: appTheme.textTheme.bodySmall,
                            unselectedLabelStyle: appTheme.textTheme.bodySmall,
                            labelPadding: EdgeInsets.zero,
                            indicatorSize: TabBarIndicatorSize.tab,
                            splashBorderRadius:
                                const BorderRadius.all(Radius.circular(40)),
                            tabs: const [
                              Tab(text: 'الكل'),
                              Tab(text: 'تحت الإجراء'),
                              Tab(text: 'تم التسليم'),
                              Tab(text: 'ملغي'),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                _FirstTabBarView(),
                _SecondTabBarView(),
                _ThirdTabBarView(),
                _FourthTabBarView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FirstTabBarView extends StatefulHookConsumerWidget {
  const _FirstTabBarView();

  @override
  ConsumerState<_FirstTabBarView> createState() => _FirstTabBarViewState();
}

class _FirstTabBarViewState extends ConsumerState<_FirstTabBarView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    ref
      ..listen(shopOrdersProcessingNotifierProvider, (previous, next) {})
      ..listen(shopOrdersDeliveredNotifierProvider, (previous, next) {})
      ..listen(shopOrdersCancelledNotifierProvider, (previous, next) {})
      // ref.listen(shopOrdersNotifierProvider, (previous, next) {
      //   debugPrint('qwe_.isNextPageAvailable');
      //   next.map(
      //     initial: (_) => canLoadNextPage = true,
      //     loadInProgress: (_) => canLoadNextPage = false,
      //     loadSuccess: (_) {
      //       if (!_.shopOrders.isFresh && !hasAlreadyShownNoConnectionToast) {
      //         hasAlreadyShownNoConnectionToast = true;
      //         showNoConnectionToast(
      //           'لقد فقدت الاتصال بالانترنت, بعض البيانات قد لا تكون حديثة.',
      //           context,
      //         );
      //       }
      //       debugPrint('qwe_.isNextPageAvailable ${_.isNextPageAvailable}');
      //       canLoadNextPage = _.isNextPageAvailable ?? false;
      //     },
      //     loadFailure: (_) => canLoadNextPage = false,
      //   );
      // });
      ..watch(
        shopOrdersNotifierProvider.select(
          (state) => state.map(
            initial: (_) => canLoadNextPage = true,
            loadInProgress: (_) => canLoadNextPage = false,
            loadSuccess: (_) => canLoadNextPage = _.isNextPageAvailable,
            loadFailure: (_) => canLoadNextPage = false,
          ),
        ),
      );

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final metrics = notification.metrics;
        final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
        final isVertical = metrics.axis == Axis.vertical;
        debugPrint('qwe_canLoadNextPage $canLoadNextPage');
        debugPrint('qwe_bool ${metrics.pixels >= limit}');
        debugPrint('qwe_isVertical $isVertical');
        debugPrint('qwe_isVertical $isVertical');
        if (canLoadNextPage && metrics.pixels >= limit && isVertical) {
          canLoadNextPage = false;
          ref.read(shopOrdersNotifierProvider.notifier).getShopOrdersNextPage();
        }
        return false;
      },
      child: RefreshIndicator.adaptive(
        displacement: 50,
        edgeOffset: 55,
        onRefresh: () async {
          ref.read(shopOrdersNotifierProvider).shopOrders.entity.clear();
          await ref.read(shopOrdersNotifierProvider.notifier).getShopOrders();
        },
        child: CustomScrollView(
          key: const PageStorageKey('shopOrdersAllTab'),
          controller: controller,
          slivers: [
            SliverOverlapInjector(
              // This is the flip side of the SliverOverlapAbsorber
              // above.
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                context,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const _ShopOrderList(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SecondTabBarView extends StatefulHookConsumerWidget {
  const _SecondTabBarView();

  @override
  ConsumerState<_SecondTabBarView> createState() => _SecondTabBarViewState();
}

class _SecondTabBarViewState extends ConsumerState<_SecondTabBarView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    ref
      ..listen(shopOrdersNotifierProvider, (previous, next) {})
      ..listen(shopOrdersDeliveredNotifierProvider, (previous, next) {})
      ..listen(shopOrdersCancelledNotifierProvider, (previous, next) {})
      ..watch(
        shopOrdersProcessingNotifierProvider.select(
          (state) => state.map(
            initial: (_) => canLoadNextPage = true,
            loadInProgress: (_) => canLoadNextPage = false,
            loadSuccess: (_) => canLoadNextPage = _.isNextPageAvailable,
            loadFailure: (_) => canLoadNextPage = false,
          ),
        ),
      );
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final metrics = notification.metrics;
        final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
        final isVertical = metrics.axis == Axis.vertical;
        debugPrint('qwe1_canLoadNextPage $canLoadNextPage');
        debugPrint('qwe1_bool ${metrics.pixels >= limit}');
        debugPrint('qwe1_isVertical $isVertical');
        debugPrint('qwe1_isVertical $isVertical');
        if (canLoadNextPage && metrics.pixels >= limit && isVertical) {
          canLoadNextPage = false;
          ref
              .read(shopOrdersProcessingNotifierProvider.notifier)
              .getShopOrdersProcessingNextPage();
        }
        return false;
      },
      child: RefreshIndicator.adaptive(
        displacement: 50,
        edgeOffset: 55,
        onRefresh: () async {
          ref
              .read(shopOrdersProcessingNotifierProvider)
              .shopOrders
              .entity
              .clear();
          await ref
              .read(shopOrdersProcessingNotifierProvider.notifier)
              .getShopOrdersProcessing();
        },
        child: CustomScrollView(
          key: const PageStorageKey('shopOrdersProcessingTab'),
          controller: controller,
          slivers: [
            SliverOverlapInjector(
              // This is the flip side of the SliverOverlapAbsorber
              // above.
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                context,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const ShopOrderListProcessing(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ThirdTabBarView extends StatefulHookConsumerWidget {
  const _ThirdTabBarView();

  @override
  ConsumerState<_ThirdTabBarView> createState() => _ThirdTabBarViewState();
}

class _ThirdTabBarViewState extends ConsumerState<_ThirdTabBarView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    ref
      ..listen(shopOrdersNotifierProvider, (previous, next) {})
      ..listen(shopOrdersProcessingNotifierProvider, (previous, next) {})
      ..listen(shopOrdersCancelledNotifierProvider, (previous, next) {})
      ..watch(
        shopOrdersDeliveredNotifierProvider.select(
          (state) => state.map(
            initial: (_) => canLoadNextPage = true,
            loadInProgress: (_) => canLoadNextPage = false,
            loadSuccess: (_) => canLoadNextPage = _.isNextPageAvailable,
            loadFailure: (_) => canLoadNextPage = false,
          ),
        ),
      );
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final metrics = notification.metrics;
        final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
        final isVertical = metrics.axis == Axis.vertical;
        debugPrint('qwe1_canLoadNextPage $canLoadNextPage');
        debugPrint('qwe1_bool ${metrics.pixels >= limit}');
        debugPrint('qwe1_isVertical $isVertical');
        debugPrint('qwe1_isVertical $isVertical');
        if (canLoadNextPage && metrics.pixels >= limit && isVertical) {
          canLoadNextPage = false;
          ref
              .read(shopOrdersDeliveredNotifierProvider.notifier)
              .getShopOrdersDeliveredNextPage();
        }
        return false;
      },
      child: RefreshIndicator.adaptive(
        displacement: 50,
        edgeOffset: 55,
        onRefresh: () async {
          ref
              .read(shopOrdersDeliveredNotifierProvider)
              .shopOrders
              .entity
              .clear();
          await ref
              .read(shopOrdersDeliveredNotifierProvider.notifier)
              .getShopOrdersDelivered();
        },
        child: CustomScrollView(
          key: const PageStorageKey('shopOrdersDeliveredTab'),
          controller: controller,
          slivers: [
            SliverOverlapInjector(
              // This is the flip side of the SliverOverlapAbsorber
              // above.
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                context,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const ShopOrderListDelivered(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FourthTabBarView extends StatefulHookConsumerWidget {
  const _FourthTabBarView();

  @override
  ConsumerState<_FourthTabBarView> createState() => _FourthTabBarViewState();
}

class _FourthTabBarViewState extends ConsumerState<_FourthTabBarView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    ref
      ..listen(shopOrdersNotifierProvider, (previous, next) {})
      ..listen(shopOrdersProcessingNotifierProvider, (previous, next) {})
      ..listen(shopOrdersDeliveredNotifierProvider, (previous, next) {})
      ..watch(
        shopOrdersCancelledNotifierProvider.select(
          (state) => state.map(
            initial: (_) => canLoadNextPage = true,
            loadInProgress: (_) => canLoadNextPage = false,
            loadSuccess: (_) => canLoadNextPage = _.isNextPageAvailable,
            loadFailure: (_) => canLoadNextPage = false,
          ),
        ),
      );
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final metrics = notification.metrics;
        final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
        final isVertical = metrics.axis == Axis.vertical;
        debugPrint('qwe1_canLoadNextPage $canLoadNextPage');
        debugPrint('qwe1_bool ${metrics.pixels >= limit}');
        debugPrint('qwe1_isVertical $isVertical');
        debugPrint('qwe1_isVertical $isVertical');
        if (canLoadNextPage && metrics.pixels >= limit && isVertical) {
          canLoadNextPage = false;
          ref
              .read(shopOrdersCancelledNotifierProvider.notifier)
              .getShopOrdersCancelledNextPage();
        }
        return false;
      },
      child: RefreshIndicator.adaptive(
        displacement: 50,
        edgeOffset: 55,
        onRefresh: () async {
          ref
              .read(shopOrdersCancelledNotifierProvider)
              .shopOrders
              .entity
              .clear();
          await ref
              .read(shopOrdersCancelledNotifierProvider.notifier)
              .getShopOrdersCancelled();
        },
        child: CustomScrollView(
          key: const PageStorageKey('shopOrdersCancelledTab'),
          controller: controller,
          slivers: [
            SliverOverlapInjector(
              // This is the flip side of the SliverOverlapAbsorber
              // above.
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                context,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const ShopOrderListCancelled(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final shopOrderCardIndexProvider =
    Provider<int>((_) => throw UnimplementedError());

class _ShopOrderList extends StatefulHookConsumerWidget {
  const _ShopOrderList();
  @override
  ConsumerState<_ShopOrderList> createState() => _ShopOrderListState();
}

class _ShopOrderListState extends ConsumerState<_ShopOrderList> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(shopOrdersNotifierProvider);
    final itemCount = ref.watch(
      shopOrdersNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity.length,
          loadInProgress: (_) => _.shopOrders.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.shopOrders.entity.length,
          loadFailure: (_) => _.shopOrders.entity.length,
        ),
      ),
    );
    debugPrint('_itemCount $itemCount');
    return SuperSliverListSeparated(
      itemCount: itemCount,
      itemBuilder: (context, index) => ProviderScope(
        key: UniqueKey(),
        overrides: [shopOrderCardIndexProvider.overrideWithValue(index)],
        child: state.map(
          initial: (_) => const SizedBox.shrink(),
          loadInProgress: (_) {
            if (index < _.shopOrders.entity.length) {
              return const _ShopOrderCard();
            } else {
              return const LoadingShopOrderCard();
            }
          },
          loadSuccess: (_) => const _ShopOrderCard(),
          loadFailure: (_) {
            if (index < _.shopOrders.entity.length) {
              return const _ShopOrderCard();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
      separator: (context, index) => const SizedBox(
        height: 16,
      ),
    );
  }
}

class _ShopOrderCard extends StatelessWidget {
  const _ShopOrderCard();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 184,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x24000000),
            blurRadius: 3,
            offset: Offset(1, 0),
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          children: [
            OrderNumberAndDate(),
            SizedBox(
              height: 16,
            ),
            OrderTrackNumber(),
            SizedBox(
              height: 16,
            ),
            OrderTotalAndQTY(),
            SizedBox(
              height: 8,
            ),
            OrderDetailsAndStatus(),
          ],
        ),
      ),
    );
  }
}

class OrderDetailsAndStatus extends ConsumerWidget {
  const OrderDetailsAndStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final index = ref.watch(shopOrderCardIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
        ),
      ),
    );
    return Row(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            // side: const BorderSide(color: Color(0xFF9D331F)),
            side: const BorderSide(color: Color(0xFFB23B23)),
            backgroundColor:
                isDarkMode ? const Color(0xFF131313) : const Color(0xFFF9F9F9),
          ),
          onPressed: () {
            context.goNamed(
              AppRoute.orderDetails.name,
              pathParameters: {'id': shopOrders.id.toString()},
              extra: shopOrders,
            );
            // ref
            //     .read(shopOrderItemsNotifierProvider.notifier)
            //     .deleteAllShopOrderItemss();
            // ref.read(responseHeaderCacheProvider).deleteAllHeaders();
          },
          child: const Text('التفاصيل'),
        ),
        const SizedBox(
          width: 40,
        ),
        Text(
          'الحالة:',
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: const Color(0xff858080),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          shopOrders.status,
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: switch (shopOrders.status) {
              'تم التسليم' => const Color(0xFF2AA952),
              'تحت الإجراء' => const Color(0xFFFFA004),
              'ملغي' => const Color(0xFFDB3022),
              _ => Colors.black,
            },
          ),
        ),
      ],
    );
  }
}

class OrderTotalAndQTY extends ConsumerWidget {
  const OrderTotalAndQTY({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final index = ref.watch(shopOrderCardIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
        ),
      ),
    );
    final total = num.tryParse(shopOrders.orderTotal)?.toStringAsFixed(2);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'الكمية:',
              style: appTheme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff858080),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              shopOrders.itemCount.toString(),
              style: appTheme.textTheme.bodySmall,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'الإجمالي الكلي:',
              style: appTheme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff858080),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Row(
              children: [
                Text(
                  '$total د.ل',
                  style: appTheme.textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const Icon(
                  Icons.price_check,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class OrderTrackNumber extends ConsumerWidget {
  const OrderTrackNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final index = ref.watch(shopOrderCardIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
        ),
      ),
    );
    return Row(
      children: [
        Text(
          'رقم التتبع:',
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: const Color(0xff858080),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          shopOrders.trackNumber,
          style: appTheme.textTheme.bodySmall
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class OrderNumberAndDate extends ConsumerWidget {
  const OrderNumberAndDate({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final index = ref.watch(shopOrderCardIndexProvider);
    final shopOrders = ref.watch(
      shopOrdersNotifierProvider.select(
        (state) => state.map(
          initial: (_) => _.shopOrders.entity[index],
          loadInProgress: (_) => _.shopOrders.entity[index],
          loadSuccess: (_) => _.shopOrders.entity[index],
          loadFailure: (_) => _.shopOrders.entity[index],
        ),
      ),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'رقم الطلب: ${shopOrders.orderNumber}',
          style: appTheme.textTheme.bodyLarge
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          DateFormat('yyyy-MM-dd').format(shopOrders.createdAt.toUtc()),
          style: appTheme.textTheme.bodySmall?.copyWith(
            color: const Color(0xff858080),
          ),
        ),
      ],
    );
  }
}
