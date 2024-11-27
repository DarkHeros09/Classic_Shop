// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$siAssetsHash() => r'05c95ba7af15d1c16a3bc20cebd77032aebe21e6';

/// See also [siAssets].
@ProviderFor(siAssets)
final siAssetsProvider = Provider<List<(String, ScalableImage)>>.internal(
  siAssets,
  name: r'siAssetsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$siAssetsHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SiAssetsRef = ProviderRef<List<(String, ScalableImage)>>;
String _$darkSiAssetsHash() => r'd67cc650fe781f16999b9cecd7bd24249e0e43ed';

/// See also [darkSiAssets].
@ProviderFor(darkSiAssets)
final darkSiAssetsProvider = Provider<List<(String, ScalableImage)>>.internal(
  darkSiAssets,
  name: r'darkSiAssetsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$darkSiAssetsHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DarkSiAssetsRef = ProviderRef<List<(String, ScalableImage)>>;
String _$initAssetsHash() => r'e5031722e95faecdb1c383fe226cd769831fa2aa';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [initAssets].
@ProviderFor(initAssets)
const initAssetsProvider = InitAssetsFamily();

/// See also [initAssets].
class InitAssetsFamily
    extends Family<AsyncValue<List<(String, ScalableImage)>>> {
  /// See also [initAssets].
  const InitAssetsFamily();

  /// See also [initAssets].
  InitAssetsProvider call({
    bool isDarkMode = false,
  }) {
    return InitAssetsProvider(
      isDarkMode: isDarkMode,
    );
  }

  @override
  InitAssetsProvider getProviderOverride(
    covariant InitAssetsProvider provider,
  ) {
    return call(
      isDarkMode: provider.isDarkMode,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'initAssetsProvider';
}

/// See also [initAssets].
class InitAssetsProvider extends FutureProvider<List<(String, ScalableImage)>> {
  /// See also [initAssets].
  InitAssetsProvider({
    bool isDarkMode = false,
  }) : this._internal(
          (ref) => initAssets(
            ref as InitAssetsRef,
            isDarkMode: isDarkMode,
          ),
          from: initAssetsProvider,
          name: r'initAssetsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$initAssetsHash,
          dependencies: InitAssetsFamily._dependencies,
          allTransitiveDependencies:
              InitAssetsFamily._allTransitiveDependencies,
          isDarkMode: isDarkMode,
        );

  InitAssetsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isDarkMode,
  }) : super.internal();

  final bool isDarkMode;

  @override
  Override overrideWith(
    FutureOr<List<(String, ScalableImage)>> Function(InitAssetsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InitAssetsProvider._internal(
        (ref) => create(ref as InitAssetsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isDarkMode: isDarkMode,
      ),
    );
  }

  @override
  FutureProviderElement<List<(String, ScalableImage)>> createElement() {
    return _InitAssetsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InitAssetsProvider && other.isDarkMode == isDarkMode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isDarkMode.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InitAssetsRef on FutureProviderRef<List<(String, ScalableImage)>> {
  /// The parameter `isDarkMode` of this provider.
  bool get isDarkMode;
}

class _InitAssetsProviderElement
    extends FutureProviderElement<List<(String, ScalableImage)>>
    with InitAssetsRef {
  _InitAssetsProviderElement(super.provider);

  @override
  bool get isDarkMode => (origin as InitAssetsProvider).isDarkMode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
