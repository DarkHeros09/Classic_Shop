import 'package:classic_shop/src/features/app_policy/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppPolicyPage extends StatefulHookConsumerWidget {
  const AppPolicyPage({super.key});

  @override
  ConsumerState<AppPolicyPage> createState() => _AppPolicyPageState();
}

class _AppPolicyPageState extends ConsumerState<AppPolicyPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(appPolicyNotifierProvider.notifier).fetchAppPolicy();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(appPolicyNotifierProvider);
    final controller = useScrollController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('سياسة التطبيق'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: state.maybeWhen(
          loadSuccess: (_) => Markdown(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            styleSheet: MarkdownStyleSheet(
              textScaler: const TextScaler.linear(.85),
            ),
            controller: controller,
            data: _.entity.policy ?? '',
            selectable: true,
          ),
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
