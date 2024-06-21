import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_address_card.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_address_sub_title.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_app_bar.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_delivery_total.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_finish_payment_button.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_payment_card.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_payment_options.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_sub_total.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/widgets/checkout_total.dart';
import 'package:flutter/material.dart';

class CheckoutPageContent extends StatelessWidget {
  const CheckoutPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CheckoutAppBar(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CheckoutAddressSubTitle(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CheckoutAddressCard(),
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        CheckoutPaymentSubTitle(),
        CheckoutPaymentOptions(),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
        SliverDivider(),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CheckoutSubTotal(),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CheckoutDeliveryTotal(),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverDivider(),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CheckoutTotal(),
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverToBoxAdapter(
          child: CheckoutFinishPaymentButton(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 56)),
      ],
    );
  }
}

class SliverDivider extends StatelessWidget {
  const SliverDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Divider(
          color: Color(0xffE5E5E5),
          thickness: .8,
          height: 1,
        ),
      ),
    );
  }
}
