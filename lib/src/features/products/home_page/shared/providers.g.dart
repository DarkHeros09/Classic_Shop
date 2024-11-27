// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homepageProductsIndexHash() =>
    r'7de067a4cae30b135f3ed69253ce7bca90101115';

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

////////* Presentation ///////////////
///
/// Copied from [homepageProductsIndex].
@ProviderFor(homepageProductsIndex)
const homepageProductsIndexProvider = HomepageProductsIndexFamily();

////////* Presentation ///////////////
///
/// Copied from [homepageProductsIndex].
class HomepageProductsIndexFamily extends Family<int> {
  ////////* Presentation ///////////////
  ///
  /// Copied from [homepageProductsIndex].
  const HomepageProductsIndexFamily();

  ////////* Presentation ///////////////
  ///
  /// Copied from [homepageProductsIndex].
  HomepageProductsIndexProvider call(
    ProductType? type,
  ) {
    return HomepageProductsIndexProvider(
      type,
    );
  }

  @override
  HomepageProductsIndexProvider getProviderOverride(
    covariant HomepageProductsIndexProvider provider,
  ) {
    return call(
      provider.type,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies =
      const <ProviderOrFamily>[];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      const <ProviderOrFamily>{};

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homepageProductsIndexProvider';
}

////////* Presentation ///////////////
///
/// Copied from [homepageProductsIndex].
class HomepageProductsIndexProvider extends AutoDisposeProvider<int> {
  ////////* Presentation ///////////////
  ///
  /// Copied from [homepageProductsIndex].
  HomepageProductsIndexProvider(
    ProductType? type,
  ) : this._internal(
          (ref) => homepageProductsIndex(
            ref as HomepageProductsIndexRef,
            type,
          ),
          from: homepageProductsIndexProvider,
          name: r'homepageProductsIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homepageProductsIndexHash,
          dependencies: HomepageProductsIndexFamily._dependencies,
          allTransitiveDependencies:
              HomepageProductsIndexFamily._allTransitiveDependencies,
          type: type,
        );

  HomepageProductsIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final ProductType? type;

  @override
  Override overrideWith(
    int Function(HomepageProductsIndexRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HomepageProductsIndexProvider._internal(
        (ref) => create(ref as HomepageProductsIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int> createElement() {
    return _HomepageProductsIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomepageProductsIndexProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HomepageProductsIndexRef on AutoDisposeProviderRef<int> {
  /// The parameter `type` of this provider.
  ProductType? get type;
}

class _HomepageProductsIndexProviderElement
    extends AutoDisposeProviderElement<int> with HomepageProductsIndexRef {
  _HomepageProductsIndexProviderElement(super.provider);

  @override
  ProductType? get type => (origin as HomepageProductsIndexProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
