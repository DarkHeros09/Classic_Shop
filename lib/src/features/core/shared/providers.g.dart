// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dbHash() => r'b97dc756d876d9ef29bcfeaafbe1ea50a623bb1f';

/// See also [db].
@ProviderFor(db)
final dbProvider = FutureProvider<Database>.internal(
  db,
  name: r'dbProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dbHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DbRef = FutureProviderRef<Database>;
String _$sembastHash() => r'0362cb28c9183806fea1fee3e826f88451e35a51';

/// See also [sembast].
@ProviderFor(sembast)
final sembastProvider = Provider<SembastDatabase>.internal(
  sembast,
  name: r'sembastProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sembastHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SembastRef = ProviderRef<SembastDatabase>;
String _$responseHeaderCacheHash() =>
    r'9f5e9759dee684718e3ed522fe1a78388ee2cf6c';

/// See also [responseHeaderCache].
@ProviderFor(responseHeaderCache)
final responseHeaderCacheProvider = Provider<ResponseHeadersCache>.internal(
  responseHeaderCache,
  name: r'responseHeaderCacheProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$responseHeaderCacheHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ResponseHeaderCacheRef = ProviderRef<ResponseHeadersCache>;
String _$widgetChildHash() =>
    r'83fe3dde5ceb64a03d258840274e8aba3cf3bef1'; //////////* Presentation ////////////
///
/// Copied from [widgetChild].
@ProviderFor(widgetChild)
final widgetChildProvider = Provider<StatefulNavigationShell>.internal(
  widgetChild,
  name: r'widgetChildProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$widgetChildHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WidgetChildRef = ProviderRef<StatefulNavigationShell>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
