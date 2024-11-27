// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkoutApiHash() => r'6842f417a861d62130ede320221a6b132b92ea1c';

/// See also [checkoutApi].
@ProviderFor(checkoutApi)
final checkoutApiProvider = Provider<CheckoutApi>.internal(
  checkoutApi,
  name: r'checkoutApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$checkoutApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CheckoutApiRef = ProviderRef<CheckoutApi>;
String _$checkoutRemoteServiceHash() =>
    r'4973b1e6befb195b171250d77c6339562d10d578';

/// See also [checkoutRemoteService].
@ProviderFor(checkoutRemoteService)
final checkoutRemoteServiceProvider = Provider<CheckoutRemoteService>.internal(
  checkoutRemoteService,
  name: r'checkoutRemoteServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$checkoutRemoteServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CheckoutRemoteServiceRef = ProviderRef<CheckoutRemoteService>;
String _$selectedPaymentTypeNotifierHash() =>
    r'47f2c389aec9fcb21f855aecc6c87df5c61f41c1';

/// See also [SelectedPaymentTypeNotifier].
@ProviderFor(SelectedPaymentTypeNotifier)
final selectedPaymentTypeNotifierProvider = AutoDisposeNotifierProvider<
    SelectedPaymentTypeNotifier, SelectedPaymentType>.internal(
  SelectedPaymentTypeNotifier.new,
  name: r'selectedPaymentTypeNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedPaymentTypeNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedPaymentTypeNotifier
    = AutoDisposeNotifier<SelectedPaymentType>;
String _$subTotalNotifierHash() => r'df3ae5bc5d9f410832d2207bc1d3f8a7809536de';

/// See also [SubTotalNotifier].
@ProviderFor(SubTotalNotifier)
final subTotalNotifierProvider =
    AutoDisposeNotifierProvider<SubTotalNotifier, num>.internal(
  SubTotalNotifier.new,
  name: r'subTotalNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$subTotalNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SubTotalNotifier = AutoDisposeNotifier<num>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
