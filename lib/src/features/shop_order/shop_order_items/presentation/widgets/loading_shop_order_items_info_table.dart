import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingShopOrderItemsDetails extends StatelessWidget {
  const LoadingShopOrderItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              // automaticallyImplyLeading: false,
              title: Text(
                'تفاصيل الطلب',
                // style: GoogleFonts.notoKufiArabic(
                //   fontSize: 20,
                //   fontWeight: FontWeight.w400,
                //   color: Colors.black,
                // ),
                style: appTheme.textTheme.headlineSmall,
              ),
              centerTitle: true,
              // leading: IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.close),
              // ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            // ShopOrderItemsOrderNumberAndDate(
            //   orderNumber: widget.orderNumber,
            // ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            //!!!!!!
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomShimmer(height: 20, width: 100, borderRadius: 4),
                        CustomShimmer(height: 19, width: 76, borderRadius: 4),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomShimmer(height: 19, width: 155, borderRadius: 4),
                        CustomShimmer(height: 19, width: 111, borderRadius: 4),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //!!!!!
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CustomShimmer(height: 20, width: 60, borderRadius: 4),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 12),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  height: 128,
                  width: 396,
                  decoration: BoxDecoration(
                    color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x24000000),
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: const Stack(
                    children: [
                      // Image.network(
                      //   width: 128,
                      //   fit: BoxFit.cover,
                      //   shopOrderItems?.productImage ?? '',
                      // ),
                      CustomShimmer(height: 128, width: 128, borderRadius: 0),
                      Positioned(
                        right: 144,
                        top: 12,
                        child: CustomShimmer(
                          height: 16,
                          width: 90,
                          borderRadius: 4,
                        ),
                      ),
                      Positioned(
                        right: 144,
                        top: 43,
                        child: CustomShimmer(
                          height: 16,
                          width: 60,
                          borderRadius: 4,
                        ),
                      ),
                      Positioned(
                        right: 250,
                        top: 43,
                        child: CustomShimmer(
                          height: 16,
                          width: 60,
                          borderRadius: 4,
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        left: 4,
                        child: CustomShimmer(
                          height: 16,
                          width: 50,
                          borderRadius: 4,
                        ),
                      ),
                      Positioned(
                        right: 144,
                        bottom: 16,
                        child: CustomShimmer(
                          height: 16,
                          width: 50,
                          borderRadius: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //!!!!
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    CustomShimmer(height: 19, width: 100, borderRadius: 4),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            //!!!!!!
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Table(
                  columnWidths: const {
                    0: FractionColumnWidth(.31),
                    1: FractionColumnWidth(.69),
                  },
                  border: TableBorder.all(
                    style: BorderStyle.none,
                  ),
                  children: const [
                    TableRow(
                      children: [
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 80,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 120,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 80,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 50,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 40,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 50,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 55,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 90,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 104,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomShimmer(
                              height: 19,
                              width: 90,
                              borderRadius: 4,
                            ),
                          ],
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
