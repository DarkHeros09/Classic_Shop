import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingShopOrderCard extends StatelessWidget {
  const LoadingShopOrderCard({super.key});

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
          )
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
            _OrderNumberAndDate(),
            SizedBox(
              height: 16,
            ),
            _OrderTrackNumber(),
            SizedBox(
              height: 16,
            ),
            _OrderTotalAndQTY(),
            SizedBox(
              height: 8,
            ),
            _OrderDetailsAndStatus()
          ],
        ),
      ),
    );
  }
}

class _OrderDetailsAndStatus extends StatelessWidget {
  const _OrderDetailsAndStatus();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomShimmer(height: 30, width: 100, borderRadius: 30),
        SizedBox(
          width: 40,
        ),
        CustomShimmer(height: 24, width: 130, borderRadius: 4),
      ],
    );
  }
}

class _OrderTotalAndQTY extends StatelessWidget {
  const _OrderTotalAndQTY();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomShimmer(height: 20, width: 80, borderRadius: 4),
          ],
        ),
        Row(
          children: [
            CustomShimmer(height: 24, width: 180, borderRadius: 4),
          ],
        )
      ],
    );
  }
}

class _OrderTrackNumber extends StatelessWidget {
  const _OrderTrackNumber();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomShimmer(height: 20, width: 180, borderRadius: 4),
      ],
    );
  }
}

class _OrderNumberAndDate extends StatelessWidget {
  const _OrderNumberAndDate();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomShimmer(height: 24, width: 120, borderRadius: 4),
        CustomShimmer(height: 16, width: 80, borderRadius: 4),
      ],
    );
  }
}
