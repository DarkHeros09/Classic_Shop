import 'package:classic_shop/src/features/settings/shared/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = Theme.of(context);
    final settings =
        ref.watch(settingsNotifierProvider.select((value) => value.settings));
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text(
                'الإعدادات',
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
              //   icon: const Icon(Icons.arrow_back),
              // ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('الإشعارات'),
                    ListTile(
                      visualDensity: const VisualDensity(vertical: -.5),
                      contentPadding: EdgeInsets.zero,
                      trailing: CupertinoSwitch(
                        value: settings.getSalesNotification,
                        onChanged: (value) async {
                          await ref
                              .read(settingsNotifierProvider.notifier)
                              .updateSettings(
                                settings.copyWith(
                                  getSalesNotification: value,
                                ),
                              );
                        },
                      ),
                      title: const Text('التخفيضات'),
                    ),
                    ListTile(
                      visualDensity: const VisualDensity(vertical: -.5),
                      contentPadding: EdgeInsets.zero,
                      trailing: CupertinoSwitch(
                        value: settings.getNewProductsNotification,
                        onChanged: (value) async {
                          await ref
                              .read(settingsNotifierProvider.notifier)
                              .updateSettings(
                                settings.copyWith(
                                  getNewProductsNotification: value,
                                ),
                              );
                        },
                      ),
                      title: const Text('المنتجات الجديدة'),
                    ),
                    ListTile(
                      visualDensity: const VisualDensity(vertical: -.5),
                      contentPadding: EdgeInsets.zero,
                      trailing: CupertinoSwitch(
                        value: settings.getDeliveryStatusNotification,
                        onChanged: (value) async {
                          await ref
                              .read(settingsNotifierProvider.notifier)
                              .updateSettings(
                                settings.copyWith(
                                  getDeliveryStatusNotification: value,
                                ),
                              );
                        },
                      ),
                      title: const Text('التوصيل وحالة المنتج'),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text('المظهر'),
                    ListTile(
                      visualDensity: const VisualDensity(vertical: -.5),
                      contentPadding: EdgeInsets.zero,
                      trailing: CupertinoSwitch(
                        value: settings.isDarkMode,
                        onChanged: (value) async {
                          await ref
                              .read(settingsNotifierProvider.notifier)
                              .updateSettings(
                                settings.copyWith(
                                  isDarkMode: value,
                                ),
                              );
                        },
                      ),
                      title: const Text('النمط الليلي'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
