import 'package:classic_shop/src/features/brands/presentation/widgets/brand_chip.dart';
import 'package:classic_shop/src/features/brands/presentation/widgets/loading_brand_chip.dart';
import 'package:classic_shop/src/features/brands/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BrandChipGroupValue {
  const BrandChipGroupValue(
    this.groupValue,
  );
  final int? groupValue;
}

class BrandChipNotifier extends AutoDisposeNotifier<BrandChipGroupValue> {
  @override
  BrandChipGroupValue build() {
    return const BrandChipGroupValue(null);
  }

  void groupValue(int value) {
    state = BrandChipGroupValue(value);
  }
}

final brandChipNotifierProvider =
    NotifierProvider.autoDispose<BrandChipNotifier, BrandChipGroupValue>(
  BrandChipNotifier.new,
);

final selectedBrandIdProvider = StateProvider.autoDispose<int?>((ref) {
  return null;
});

final brandChipIndexProvider = Provider<int>((_) => 0);

class BrandChipRow extends StatefulHookConsumerWidget {
  const BrandChipRow({
    super.key,
  });

  @override
  ConsumerState<BrandChipRow> createState() => _BrandChipRowState();
}

class _BrandChipRowState extends ConsumerState<BrandChipRow> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(brandNotifierProvider.notifier).getBrands();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(brandNotifierProvider);
    final brands = ref.watch(
      brandNotifierProvider.select((value) => value.brands.entity),
    );
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ProviderScope(
          key: UniqueKey(),
          overrides: [brandChipIndexProvider.overrideWithValue(index)],
          child: state.map(
            initial: (_) => const LoadingBrandChip(),
            loadInProgress: (_) => const LoadingBrandChip(),
            loadSuccess: (_) => const BrandChip(),
            loadFailure: (_) => const SizedBox.shrink(),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8,
        );
      },
      itemCount: state.map(
        initial: (_) => 5,
        loadInProgress: (_) => 5,
        loadSuccess: (_) => brands.length,
        loadFailure: (_) => brands.length,
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.widget);
  final Widget widget;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Consumer(
      builder: (context, ref, child) {
        final appTheme = Theme.of(context);
        final isDarkMode = appTheme.brightness == Brightness.dark;
        return ColoredBox(
          color: isDarkMode ? const Color(0xFF121212) : Colors.white,
          child: widget,
        );
      },
    );
  }

  @override
  double get maxExtent => 136 + 39 + 8 + 8 + 8;

  @override
  double get minExtent => 136 + 39 + 8 + 8 + 8;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
