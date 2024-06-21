import 'package:classic_shop/src/features/brands/presentation/widgets/brand_chip_row.dart';
import 'package:classic_shop/src/features/products/core/presentation/widgets/category_chip_row.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CSPersistanceHeader extends ConsumerWidget {
  const CSPersistanceHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPersistentHeader(
      floating: true,
      delegate: MyDelegate(
        const Column(
          children: [
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 40,
              child: CategoryChipRow(),
            ),
            SizedBox(
              height: 16,
            ),
            Center(child: Text('تسوق حسب الماركة')),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 91,
              child: BrandChipRow(),
            )
          ],
        ),
      ),
    );
  }
}
