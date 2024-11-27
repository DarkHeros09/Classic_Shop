import 'package:flutter/material.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

class Sizes extends StatelessWidget {
  const Sizes({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text('أحجام'),
              centerTitle: true,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SuperSliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          'S',
                          style: appTheme.textTheme.bodyLarge,
                        ),
                      ),
                      const Divider(
                        height: 1,
                        thickness: .3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'M',
                          style: appTheme.textTheme.bodyLarge,
                        ),
                      ),
                      const Divider(
                        height: 1,
                        thickness: .3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'L',
                          style: appTheme.textTheme.bodyLarge,
                        ),
                      ),
                      const Divider(
                        height: 1,
                        thickness: .3,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'XL',
                          style: appTheme.textTheme.bodyLarge,
                        ),
                      ),
                      const Divider(
                        height: 1,
                        thickness: .3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 139),
                  child: Container(
                    height: 64,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Color(0xFF9D331F),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'حفظ العنوان',
                          style: appTheme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
