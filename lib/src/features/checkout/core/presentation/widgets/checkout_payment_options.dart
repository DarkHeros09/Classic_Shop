import 'package:classic_shop/src/features/checkout/payment_types/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

class SelectedPaymentType {
  SelectedPaymentType(this.value);

  String value;
}

class SelectedPaymentTypeNotifier extends Notifier<SelectedPaymentType> {
  @override
  SelectedPaymentType build() {
    return SelectedPaymentType('');
  }
}

final selectedPaymentTypeNotifierProvider =
    NotifierProvider<SelectedPaymentTypeNotifier, SelectedPaymentType>(
  SelectedPaymentTypeNotifier.new,
);

class CheckoutPaymentOptions extends HookConsumerWidget {
  const CheckoutPaymentOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paymentTypeNotifierProvider);
    final paymentTypes = ref.watch(
      paymentTypeNotifierProvider.select(
        (value) => value.mapOrNull(
          loadSuccess: (_) => _.paymentTypes
              .where((element) => element.isActive == true)
              .toList(),
        ),
      ),
    );
    paymentTypes?.sort((a, b) => a.id.compareTo(b.id));

    final groupValue = useState('');
    final selectedPaymentType = ref.watch(selectedPaymentTypeNotifierProvider);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SuperSliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: paymentTypes?.length ?? 0,
          (context, index) => state.map(
            initial: (value) => const SizedBox.shrink(),
            loadInProgress: (value) => const SizedBox.shrink(),
            loadSuccess: (value) => _PaymentOptions(
              title: paymentTypes?[index].value ?? '',
              value: paymentTypes?[index].id.toString() ?? '',
              groupValue: groupValue.value,
              onChanged: (value) async {
                groupValue.value = value!;
                selectedPaymentType.value = value;
                //! this call needs to go
                // await ref
                //     .read(paymentMethodNotifierProvider.notifier)
                //     .createPaymentMethod(
                //       paymentTypeId: paymentTypes?[index].id ?? 0,
                //       provider: paymentTypes?[index].value ?? '',
                //     );
              },
            ),
            loadFailure: (value) => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}

class _PaymentOptions extends StatelessWidget {
  const _PaymentOptions({
    required this.title,
    required this.value,
    required this.groupValue,
    this.onChanged,
  });

  final String title;
  final String value;
  final String groupValue;
  final void Function(String? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
      title: Text(title),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
