import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/settings/application/settings_notifier.dart';
import 'package:classic_shop/src/routing/app_router.dart';
import 'package:classic_shop/src/themes/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jovial_svg/jovial_svg.dart';

class ProfilePage extends StatefulHookConsumerWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(settingsNotifierProvider.notifier).fetchSettings();
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    final controller = useScrollController();
    final userName = ref.watch(authStreamProvider).value?.username ?? '';
    final email = ref.watch(authStreamProvider).value?.email ?? '';
    final tokenIsValid = ref.watch(tokenValidStreamProvider).value;
    final pinIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.pin.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.pin.name,
                  )
                  .$2,
            ),
          );
    final fileTextIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.fileText.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.fileText.name,
                  )
                  .$2,
            ),
          );
    final gearIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.gear.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.gear.name,
                  )
                  .$2,
            ),
          );
    final activityIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.activity.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.activity.name,
                  )
                  .$2,
            ),
          );
    final folderOpenIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.folderOpen.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.folderOpen.name,
                  )
                  .$2,
            ),
          );
    final logoutIcon = isDarkMode
        ? ref.watch(
            darkSiAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.logout.name,
                  )
                  .$2,
            ),
          )
        : ref.watch(
            siAssetsProvider.select(
              (value) => value
                  .singleWhere(
                    (element) => element.$1 == SvgAssets.logout.name,
                  )
                  .$2,
            ),
          );
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          Text(
            'رقم الإصدار 1.00',
            style: appTheme.textTheme.labelMedium?.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 8),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'حسابي',
                        // style: GoogleFonts.notoKufiArabic(
                        //   fontSize: 20,
                        //   fontWeight: FontWeight.w400,
                        //   color: Colors.black,
                        // ),
                        style: appTheme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                child: CircleAvatar(
                                  radius: 56,
                                  child: Icon(
                                    Icons.person,
                                    size: 56,
                                  ),
                                ),
                              ),
                              // Align(
                              //   child: CircleAvatar(
                              //     backgroundColor: Colors.black,
                              //     radius: 16.1,
                              //     child: CircleAvatar(
                              //       radius: 16,
                              //       backgroundColor: Colors.white,
                              //       child: Icon(
                              //         Icons.edit,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            userName,
                            // 'محمد بن غزي',
                            // style: GoogleFonts.notoKufiArabic(
                            //   fontSize: 16,
                            //   fontWeight: FontWeight.w700,
                            //   color: Colors.black,
                            // ),
                            style: appTheme.textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            email,
                            // 'mnbenghuzzi@gmail.com',
                            // style: GoogleFonts.notoKufiArabic(
                            //   fontSize: 16,
                            //   fontWeight: FontWeight.w400,
                            //   color: Colors.black,
                            // ),
                            style: appTheme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                    // height: 28,
                  ),
                  Column(
                    children: [
                      if (userName.isNotEmpty &&
                          tokenIsValid != null &&
                          tokenIsValid) ...[
                        ProfilePageItems(
                          title: 'عنوان التسليم',
                          icon: pinIcon,
                          onTap: () => context.goNamed(AppRoute.address.name),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            height: 0,
                            thickness: .79,
                            color: Color(0xFFe5e5e5),
                          ),
                        ),
                        ProfilePageItems(
                          title: 'الطلبات',
                          icon: fileTextIcon,
                          onTap: () => context.goNamed(AppRoute.orders.name),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            height: 0,
                            thickness: .79,
                            color: Color(0xFFe5e5e5),
                          ),
                        ),
                      ],
                      ProfilePageItems(
                        title: 'الإعدادات',
                        icon: gearIcon,
                        onTap: () => context.goNamed(AppRoute.settings.name),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          height: 0,
                          thickness: .79,
                          color: Color(0xFFe5e5e5),
                        ),
                      ),
                      ProfilePageItems(
                        title: 'رسالة الترحيب',
                        icon: activityIcon,
                        onTap: () =>
                            context.pushNamed(AppRoute.onBoarding.name),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          height: 0,
                          thickness: .79,
                          color: Color(0xFFe5e5e5),
                        ),
                      ),
                      ProfilePageItems(
                        title: 'سياسة التطبيق',
                        icon: folderOpenIcon,
                        onTap: () => context.pushNamed(AppRoute.policy.name),
                      ),
                      if (userName.isNotEmpty &&
                          tokenIsValid != null &&
                          tokenIsValid) ...[
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            height: 0,
                            thickness: .79,
                            color: Color(0xFFe5e5e5),
                          ),
                        ),
                        ProfilePageItems(
                          title: 'تسجيل الخروج',
                          icon: logoutIcon,
                          onTap: () async {
                            await Future.wait([
                              ref.read(sembastDatabaseProvider).delete(),
                              ref.read(authNotifierProvider.notifier).signOut(),
                            ]);
                          },
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePageItems extends StatelessWidget {
  const ProfilePageItems({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
  });
  final String title;
  final ScalableImage icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const SizedBox(width: 16),
              ScalableImageWidget(
                si: icon,
                scale: .75,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                // style: GoogleFonts.notoKufiArabic(
                //   fontSize: 16,
                //   fontWeight: FontWeight.w400,
                //   color: Colors.black,
                // ),
                style: appTheme.textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
