import 'package:classic_shop/src/features/address/presentation/address_page.dart';
import 'package:classic_shop/src/features/app_policy/presentation/app_policy_page.dart';
import 'package:classic_shop/src/features/auth/application/auth_notifier.dart';
import 'package:classic_shop/src/features/auth/presentation/forgot_password_page.dart';
import 'package:classic_shop/src/features/auth/presentation/sign_in_page.dart';
import 'package:classic_shop/src/features/auth/presentation/sign_up_page.dart';
import 'package:classic_shop/src/features/bottom_nav_bar/presentation/bottom_nav_bar.dart';
import 'package:classic_shop/src/features/cart/presentation/cart/cart_page.dart';
import 'package:classic_shop/src/features/categories/presentation/categories_page.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/checkkout_success.dart';
import 'package:classic_shop/src/features/checkout/core/presentation/checkout_page.dart';
import 'package:classic_shop/src/features/core/shared/providers.dart';
import 'package:classic_shop/src/features/error/Presentation/error_page.dart';
import 'package:classic_shop/src/features/notification/presentation/notifications_page.dart';
import 'package:classic_shop/src/features/on_boarding/application/on_boarding_notifier.dart';
import 'package:classic_shop/src/features/on_boarding/presentation/onboarding.dart';
import 'package:classic_shop/src/features/otp/presentation/otp_page.dart';
import 'package:classic_shop/src/features/products/core/domain/product.dart';
import 'package:classic_shop/src/features/products/home_page/application/home_page_notifier.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/home_page.dart';
import 'package:classic_shop/src/features/products/home_page/presentation/selected_products.dart/presentation/selected_products_page.dart';
import 'package:classic_shop/src/features/products/listed_products/presentation/selected_category.dart';
import 'package:classic_shop/src/features/products/product_details/presentation/product_details_page.dart';
import 'package:classic_shop/src/features/products/searched_products/presentation/search_page.dart';
import 'package:classic_shop/src/features/profile/presentation/profile_page.dart';
import 'package:classic_shop/src/features/promotions/domain/promotion_type.dart';
import 'package:classic_shop/src/features/promotions/presentation/home_page_carousel_details.dart';
import 'package:classic_shop/src/features/settings/presentation/settings_page.dart';
import 'package:classic_shop/src/features/settings/presentation/widgets/change_password_page.dart';
import 'package:classic_shop/src/features/shop_order/core/domain/shop_order.dart';
import 'package:classic_shop/src/features/shop_order/core/presentation/shop_order_page.dart';
import 'package:classic_shop/src/features/shop_order/shop_order_items/presentation/shop_order_items_details.dart';
import 'package:classic_shop/src/features/splash/application/splash_notifier.dart';
import 'package:classic_shop/src/features/splash/presentation/splash_page.dart';
import 'package:classic_shop/src/routing/go_router_refresh_stream.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

enum AppRoute {
  splash,
  signIn,
  signUp,
  forgotPassword,
  changePassword,
  signInOTP,
  forgotPasswordOTP,
  changePasswordOTP,
  home,
  search,
  product,
  productDetails,
  selectedProducts,
  categories,
  selectedCategory,
  cart,
  checkout,
  checkoutAddress,
  checkoutSuccess,
  profile,
  address,
  orders,
  orderDetails,
  settings,
  onBoarding,
  policy,
  promotedCarouselCard,
  notifications,
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorCategoryKey =
    GlobalKey<NavigatorState>(debugLabel: 'category');
final _shellNavigatorCartKey = GlobalKey<NavigatorState>(debugLabel: 'cart');
final _shellNavigatorProfileKey =
    GlobalKey<NavigatorState>(debugLabel: 'profile');

@Riverpod(keepAlive: true)
GlobalKey<NavigatorState> rootNavigatorKey(Ref ref) {
  return _rootNavigatorKey;
}

@Riverpod(keepAlive: true, dependencies: [])
GoRouter goRouter(Ref ref) {
  final auth = ref.watch(authNotifierProvider.notifier);
  final splash = ref.watch(splashNotifierProvider.notifier);
  final onBoarding = ref.watch(onBoardingNotifierProvider.notifier);

  FutureOr<String?> redirectAuth(BuildContext context, GoRouterState state) {
    final isLoggedIn = auth.currentUser != null;
    final isEmailVerified = auth.currentUser?.isEmailVerified ?? false;
    final isBlocked = auth.currentUser?.isBlocked ?? true;
    debugPrint('APPROUTER IS2 LOGGEDIN: $isLoggedIn');
    debugPrint('USER IS ${auth.currentUser}');

    if (isLoggedIn && isEmailVerified && !isBlocked) {
      return null;
    } else {
      return '/sign-in';
    }
  }

  return GoRouter(
    // initialLocation: '/home',
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(
      [
        auth.authStateChanges(),
        splash.splashShownStateChanges(),
        onBoarding.onBoardingShownStateChanges(),
      ],
    ),
    errorPageBuilder: (context, state) => NoTransitionPage(
      child: ErrorPage(
        showHomeButton: state.topRoute?.parentNavigatorKey != _rootNavigatorKey,
      ),
    ),
    routes: [
      // GoRoute(
      //   path: '/test',
      //   builder: (context, state) => const TestAnimation(),
      // ),
      GoRoute(
        path: '/splash',
        name: AppRoute.splash.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const SplashPage(),
        redirect: (context, state) {
          final isSplashShown = splash.isSplashShown;
          debugPrint('isSplashShown: $isSplashShown');
          if (isSplashShown != null && isSplashShown) {
            // late final themeMode = ref.read(themeModeNotifierProvider);
            // WidgetsBinding.instance.addPostFrameCallback(
            //   (_) => SystemChrome.setSystemUIOverlayStyle(
            //     SystemUiOverlayStyle(
            //       statusBarColor: Colors.transparent,
            //       statusBarIconBrightness: themeMode != ThemeMode.dark
            //           ? Brightness.dark
            //           : Brightness.light,
            //     ),
            //   ),
            // );
            return '/home';
          } else {
            return '/splash';
          }
        },
      ),
      GoRoute(
        path: '/onBoarding',
        name: AppRoute.onBoarding.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const OnBoarding(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: '/app-policy',
        name: AppRoute.policy.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: AppPolicyPage(),
          );
        },
      ),
      GoRoute(
        path: '/search',
        name: AppRoute.search.name,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: SearchPage());
        },
      ),
      // GoRoute(
      //   path: '/otp',
      //   name: AppRoute.otp.name,
      //   parentNavigatorKey: _rootNavigatorKey,
      //   pageBuilder: (context, state) {
      //     return const NoTransitionPage(child: OTPPage());
      //   },
      //   // redirect: (context, state) {
      //   //   final previousPath = ref.watch(previousPathProvider);
      //   //   final isLoggedIn = auth.currentUser != null;
      //   //   debugPrint('APPROUTER IS LOGGEDIN: $isLoggedIn');

      //   //   return isLoggedIn ? previousPath ?? '/home' : null;
      //   // },
      // ),
      StatefulShellRoute.indexedStack(
        // navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return ProviderScope(
            key: GlobalObjectKey(child),
            overrides: [widgetChildProvider.overrideWithValue(child)],
            child: const ScaffoldWithBottomNavBar(),
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHomeKey,
            routes: [
              GoRoute(
                path: '/home',
                name: AppRoute.home.name,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: HomePage());
                },
                redirect: (context, state) {
                  final isOnBoardingShown = onBoarding.currentValue;
                  debugPrint('isOnBoardingShown: $isOnBoardingShown');
                  if (isOnBoardingShown != null && isOnBoardingShown) {
                    return null;
                  } else {
                    return '/onBoarding';
                  }
                },
                routes: [
                  GoRoute(
                    path: 'product/:id',
                    name: AppRoute.productDetails.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      final extra = state.extra! as (Product, int);
                      final product = extra.$1;
                      final discountValue = extra.$2;
                      return NoTransitionPage(
                        child: ProductDetailsPage(
                          product: product,
                          discountValue: discountValue,
                        ),
                      );
                    },
                  ),
                  GoRoute(
                    path: 'promoted/:id',
                    name: AppRoute.promotedCarouselCard.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      final promotionType = state.extra as PromotionType?;
                      final id = int.parse(state.pathParameters['id'] ?? '');
                      return NoTransitionPage(
                        child: HomePageCarouselDetails(
                          id: id,
                          promotionType: promotionType,
                        ),
                      );
                    },
                  ),
                  GoRoute(
                    path: 'selected-products',
                    name: AppRoute.selectedProducts.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      final productType = state.extra! as ProductType;
                      return NoTransitionPage(
                        child: SelectedProductsPage(
                          productType: productType,
                        ),
                      );
                    },
                  ),
                  GoRoute(
                    path: 'notifications',
                    name: AppRoute.notifications.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: NotificationsPage(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCategoryKey,
            routes: [
              GoRoute(
                path: '/categories',
                name: AppRoute.categories.name,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: CategoriesPage());
                },
                routes: [
                  GoRoute(
                    path: 'selected-category',
                    name: AppRoute.selectedCategory.name,
                    parentNavigatorKey: _shellNavigatorCategoryKey,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: SelectedCategory(),
                        // transitionsBuilder:
                        //     (context, animation, secondaryAnimation, child) {
                        //   return SlideTransition(
                        //     position: Tween<Offset>(
                        //       begin: const Offset(1, 0),
                        //       end: Offset.zero,
                        //     ).animate(animation),
                        //     child: child,
                        //   );
                        // },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCartKey,
            routes: [
              GoRoute(
                path: '/cart',
                name: AppRoute.cart.name,
                parentNavigatorKey: _shellNavigatorCartKey,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: CartPage());
                },
                redirect: redirectAuth,
                routes: [
                  GoRoute(
                    path: 'checkout',
                    name: AppRoute.checkout.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      debugPrint(state.matchedLocation);
                      debugPrint(state.fullPath);
                      return CustomTransitionPage(
                        child: const CheckoutPage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      );
                    },
                    redirect: redirectAuth,
                    routes: [
                      GoRoute(
                        path: 'address',
                        name: AppRoute.checkoutAddress.name,
                        parentNavigatorKey: _rootNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            child: const AddressPage(),
                            transitionsBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                              child,
                            ) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1, 0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                          );
                        },
                        redirect: redirectAuth,
                      ),
                      GoRoute(
                        path: 'successs',
                        name: AppRoute.checkoutSuccess.name,
                        parentNavigatorKey: _rootNavigatorKey,
                        pageBuilder: (context, state) {
                          debugPrint(state.matchedLocation);
                          debugPrint(state.fullPath);
                          return CustomTransitionPage(
                            child: const CheckoutSuccess(),
                            transitionsBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                              child,
                            ) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1, 0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: '/sign-in',
                name: AppRoute.signIn.name,
                parentNavigatorKey: _shellNavigatorCartKey,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: SignInPage());
                },
                redirect: (context, state) {
                  // final previousPath = ref.watch(previousPathProvider);
                  final isLoggedIn = auth.currentUser != null;
                  final isValid = auth.currentUser?.isValid ?? false;

                  debugPrint('APPROUTER IS1 LOGGEDIN: $isLoggedIn');
                  debugPrint('APPROUTER IS1 VERIFIED: $isValid');

                  // return isLoggedIn ? /*previousPath ??*/ '/cart' : null;
                  if (isLoggedIn) {
                    if (isValid) {
                      return '/cart';
                    }
                    if (!isValid) {
                      return '/sign-in/otp';
                    }
                  }
                  return null;
                },
                routes: [
                  GoRoute(
                    path: 'sign-up',
                    name: AppRoute.signUp.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        child: const SignUpPage(),
                        transitionsBuilder: (
                          context,
                          animation,
                          secondaryAnimation,
                          child,
                        ) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      );
                    },
                    // redirect: (context, state) {
                    //   final previousPath = ref.watch(previousPathProvider);
                    //   final isLoggedIn = auth.currentUser != null;
                    //   debugPrint('APPROUTER IS LOGGEDIN: $isLoggedIn');

                    //   return isLoggedIn ? previousPath ?? '/home' : null;
                    // },
                  ),
                  GoRoute(
                    path: 'forgot-password',
                    name: AppRoute.forgotPassword.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        child: const ForgotPasswordPage(),
                        transitionsBuilder: (
                          context,
                          animation,
                          secondaryAnimation,
                          child,
                        ) {
                          return SlideTransition(
                            position: animation.drive(
                              Tween(begin: const Offset(1, 0), end: Offset.zero)
                                  .chain(CurveTween(curve: Curves.easeInOut)),
                            ),
                            child: child,
                          );
                        },
                      );
                    },
                    // redirect: (context, state) {
                    //   final previousPath = ref.watch(previousPathProvider);
                    //   final isLoggedIn = auth.currentUser != null;
                    //   debugPrint('APPROUTER IS LOGGEDIN: $isLoggedIn');

                    //   return isLoggedIn ? previousPath ?? '/home' : null;
                    // },
                    routes: [
                      GoRoute(
                        path: 'otp',
                        name: AppRoute.forgotPasswordOTP.name,
                        parentNavigatorKey: _rootNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            child: const OTPPage(
                              signIn: false,
                              setting: false,
                            ),
                            transitionsBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                              child,
                            ) {
                              return SlideTransition(
                                position: animation.drive(
                                  Tween(
                                    begin: const Offset(1, 0),
                                    end: Offset.zero,
                                  ).chain(
                                    CurveTween(curve: Curves.easeInOut),
                                  ),
                                ),
                                child: child,
                              );
                            },
                          );
                        },

                        // redirect: (context, state) {
                        //   final previousPath = ref.watch(previousPathProvider);
                        //   final isLoggedIn = auth.currentUser != null;
                        //   debugPrint('APPROUTER IS LOGGEDIN: $isLoggedIn');

                        //   return isLoggedIn ? previousPath ?? '/home' : null;
                        // },
                        routes: [
                          GoRoute(
                            path: 'change_password',
                            name: AppRoute.changePasswordOTP.name,
                            parentNavigatorKey: _rootNavigatorKey,
                            pageBuilder: (context, state) {
                              return CustomTransitionPage(
                                child: const ChangePasswordPage(),
                                transitionsBuilder: (
                                  context,
                                  animation,
                                  secondaryAnimation,
                                  child,
                                ) {
                                  return SlideTransition(
                                    position: animation.drive(
                                      Tween(
                                        begin: const Offset(1, 0),
                                        end: Offset.zero,
                                      ).chain(
                                        CurveTween(
                                          curve: Curves.easeInOut,
                                        ),
                                      ),
                                    ),
                                    child: child,
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'otp',
                    name: AppRoute.signInOTP.name,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(
                        child: OTPPage(
                          setting: false,
                        ),
                      );
                    },
                    redirect: (context, state) {
                      // final previousPath = ref.watch(previousPathProvider);
                      final isLoggedIn = auth.currentUser != null;
                      final isValid = auth.currentUser?.isValid ?? false;

                      debugPrint('APPROUTER IS1 LOGGEDIN: $isLoggedIn');
                      debugPrint('APPROUTER IS1 VERIFIED: $isValid');

                      // return isLoggedIn ? /*previousPath ??*/ '/cart' : null;
                      if (isLoggedIn) {
                        if (!isValid) {
                          return '/sign-in/otp';
                        }
                      }
                      return null;
                    },
                    // redirect: (context, state) {
                    //   final previousPath = ref.watch(previousPathProvider);
                    //   final isLoggedIn = auth.currentUser != null;
                    //   debugPrint('APPROUTER IS LOGGEDIN: $isLoggedIn');

                    //   return isLoggedIn ? previousPath ?? '/home' : null;
                    // },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProfileKey,
            routes: [
              GoRoute(
                path: '/profile',
                name: AppRoute.profile.name,
                parentNavigatorKey: _shellNavigatorProfileKey,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: ProfilePage());
                },
                routes: [
                  GoRoute(
                    path: 'address',
                    name: AppRoute.address.name,
                    parentNavigatorKey: _shellNavigatorProfileKey,
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        child: const AddressPage(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      );
                    },
                    redirect: redirectAuth,
                  ),
                  GoRoute(
                    path: 'orders',
                    name: AppRoute.orders.name,
                    parentNavigatorKey: _shellNavigatorProfileKey,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(child: ShopOrderPage());
                    },
                    redirect: redirectAuth,
                    routes: [
                      GoRoute(
                        path: 'order-details/:id',
                        name: AppRoute.orderDetails.name,
                        parentNavigatorKey: _rootNavigatorKey,
                        pageBuilder: (context, state) {
                          final orderIdString = state.pathParameters['id'];
                          final shopOrder = state.extra is ShopOrder
                              ? state.extra! as ShopOrder
                              : null;
                          final orderId =
                              int.tryParse(orderIdString ?? '') ?? 0;
                          debugPrint(state.matchedLocation);
                          debugPrint(state.fullPath);
                          return CustomTransitionPage(
                            child: ShopOrderItemsDetails(
                              orderId: orderId,
                              orderNumber: shopOrder?.orderNumber ?? 0,
                              trackNumber: shopOrder?.trackNumber ?? '',
                              itemCount: shopOrder?.itemCount ?? 0,
                            ),
                            transitionsBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                              child,
                            ) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1, 0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'settings',
                    name: AppRoute.settings.name,
                    parentNavigatorKey: _shellNavigatorProfileKey,
                    pageBuilder: (context, state) {
                      return const NoTransitionPage(child: SettingsPage());
                    },
                    routes: [
                      GoRoute(
                        path: 'change_password',
                        name: AppRoute.changePassword.name,
                        parentNavigatorKey: _rootNavigatorKey,
                        pageBuilder: (context, state) {
                          return CustomTransitionPage(
                            child: const ChangePasswordPage(
                              forgotPassword: false,
                            ),
                            transitionsBuilder: (
                              context,
                              animation,
                              secondaryAnimation,
                              child,
                            ) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(1, 0),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
