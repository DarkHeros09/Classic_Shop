import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/notification/shared/providers.dart';
import 'package:classic_shop/src/features/settings/application/settings_notifier.dart';
import 'package:classic_shop/src/shared/toasts.dart';
import 'package:flash/flash.dart';
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
                          if (value) {
                            await ref
                                .read(firebaseMessagingProvider)
                                .subscribeToTopic('sales');
                          } else {
                            await ref
                                .read(firebaseMessagingProvider)
                                .unsubscribeFromTopic('sales');
                          }
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
                          if (value) {
                            await ref
                                .read(firebaseMessagingProvider)
                                .subscribeToTopic('new');
                          } else {
                            await ref
                                .read(firebaseMessagingProvider)
                                .unsubscribeFromTopic('new');
                          }
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
                          if (value) {
                            await ref
                                .read(firebaseMessagingProvider)
                                .subscribeToTopic('delivery_status');
                          } else {
                            await ref
                                .read(firebaseMessagingProvider)
                                .unsubscribeFromTopic('delivery_status');
                          }
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
                    const SizedBox(
                      height: 32,
                    ),
                    const Text('البيانات'),
                    const SizedBox(
                      height: 8,
                    ),
                    ListTile(
                      visualDensity: const VisualDensity(vertical: -.5),
                      contentPadding: EdgeInsets.zero,
                      title: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appTheme.colorScheme.error,
                          disabledBackgroundColor: Colors.grey,
                          fixedSize: const Size(double.maxFinite, 56),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                        onPressed: () async {
                          final isDeleted = await showModalFlash<bool>(
                            useRootNavigator: true,
                            barrierBlur: 2,
                            context: context,
                            builder: (context, controller) => AlertDialog(
                              actionsAlignment: MainAxisAlignment.spaceAround,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              icon: const Icon(
                                Icons.warning_rounded,
                                color: Colors.amber,
                                size: 50,
                              ),
                              // title: const Text('Flash'),
                              title: const Text(
                                'حذف البيانات المؤقتة؟',
                              ),
                              content: const Text(
                                'يُنصح باستخدام هذا الخيار إذا كنت تواجه مشكلة. سيؤدي هذا إلى حذف الصور المخزنة مؤقتًا والبيانات الأخرى.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12),
                              ),
                              actions: <Widget>[
                                FilledButton(
                                  onPressed: () async {
                                    await ref
                                        .read(sembastDatabaseProvider)
                                        .delete();
                                    PaintingBinding.instance.imageCache.clear();
                                    PaintingBinding.instance.imageCache
                                        .clearLiveImages();
                                    if (context.mounted) {
                                      Navigator.pop(context, true);
                                    }
                                  },
                                  style: FilledButton.styleFrom(
                                    backgroundColor: appTheme.colorScheme.error,
                                    disabledBackgroundColor: Colors.grey,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  child: const Text('حذف'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, false),
                                  style: TextButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  child: const Text('إلغاء'),
                                ),
                              ],
                            ),
                          );
                          if (isDeleted != null &&
                              isDeleted &&
                              context.mounted) {
                            await showSuccessToast(
                              'تم حذف البيانات الموقتة بنجاح',
                              context,
                            );
                          }
                        },
                        label: Text(
                          'حذف البيانات المؤقتة',
                          style: appTheme.textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                            // fontSize: 12,
                          ),
                        ),
                      ),
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
