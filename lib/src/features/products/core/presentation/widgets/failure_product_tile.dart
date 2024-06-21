import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FailureProductTile extends ConsumerWidget {
  const FailureProductTile({
    required this.reload,
    super.key,
  });

  final void Function()? reload;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    // final state = ref.watch(searchedProductsNotifierProvider);
    // final failure = state.mapOrNull(
    //   loadFailure: (_) => _.failure,
    // );
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: appTheme.colorScheme.error,
      child: ListTileTheme(
        textColor: appTheme.colorScheme.onError,
        iconColor: appTheme.colorScheme.onError,
        child: ListTile(
          title: Text(
            'حدث خطأ ما, من فضلك أعد المحاولة.',
            style: appTheme.textTheme.bodySmall!.copyWith(
              color: appTheme.colorScheme.onError,
            ),
          ),
          // subtitle: Text(
          //   failure!.map(api: (_) => 'API returned ${_.errorCode}'),
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis,
          // ),
          trailing: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          leading: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: reload,
          ),
        ),
      ),
    );
  }
}
