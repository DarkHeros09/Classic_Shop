import 'package:classic_shop/src/helpers/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingAddressCard extends StatelessWidget {
  const LoadingAddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 150,
        width: double.maxFinite,
        constraints: const BoxConstraints(),
        decoration: BoxDecoration(
          color: isDarkMode ? const Color(0xFF0D0D0D) : Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x24000000),
              offset: Offset(0, 2),
              blurRadius: 4,
            )
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _LoadingNameAndOptions(),
            SizedBox(height: 8),
            _LoadingAddressDetails(),
            SizedBox(height: 12),
            _LoadingAddressPhoneNumber(),
            _LoadingDefaultAddress()
          ],
        ),
      ),
    );
  }
}

class _LoadingDefaultAddress extends StatelessWidget {
  const _LoadingDefaultAddress();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CustomShimmer(height: 14, width: 250, borderRadius: 4),
          SizedBox(
            width: 16,
          ),
          Checkbox(
            value: false,
            onChanged: null,
          )
        ],
      ),
    );
  }
}

class _LoadingAddressPhoneNumber extends StatelessWidget {
  const _LoadingAddressPhoneNumber();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomShimmer(height: 14, width: 100, borderRadius: 4),
    );
  }
}

class _LoadingAddressDetails extends StatelessWidget {
  const _LoadingAddressDetails();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomShimmer(height: 14, width: 200, borderRadius: 4),
    );
  }
}

class _LoadingNameAndOptions extends StatelessWidget {
  const _LoadingNameAndOptions();

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomShimmer(height: 16, width: 150, borderRadius: 4),
          Theme(
            data: appTheme.copyWith(
              cardColor: const Color.fromARGB(255, 251, 249, 249),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            child: PopupMenuButton(
              enabled: false,
              elevation: 16,
              offset: const Offset(25, 50),
              itemBuilder: (context) => [],
            ),
          )
        ],
      ),
    );
  }
}
