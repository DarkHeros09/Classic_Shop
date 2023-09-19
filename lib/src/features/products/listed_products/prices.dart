import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

class Prices extends StatelessWidget {
  const Prices({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text('أسعار'),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          '0 د.ل - 99 د.ل',
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
                          '100 د.ل - 149 د.ل',
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
                          '150 د.ل - 199 د.ل',
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
                          '200 د.ل - 299 د.ل',
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
                          '300 د.ل - 499 د.ل',
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
                          '500 د.ل - 999 د.ل',
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
                      const EdgeInsets.only(left: 16, right: 16, bottom: 139),
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
                          style: GoogleFonts.notoKufiArabic(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
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
