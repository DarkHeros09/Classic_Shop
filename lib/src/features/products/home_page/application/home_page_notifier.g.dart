// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homePageNotifierHash() => r'99822582e783a717a2fca9dd23c444748d4b0724';

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

abstract class _$HomePageNotifier
    extends BuildlessAutoDisposeNotifier<HomePageState> {
  late final ProductType? type;

  HomePageState build(
    ProductType? type,
  );
}

/// See also [HomePageNotifier].
@ProviderFor(HomePageNotifier)
const homePageNotifierProvider = HomePageNotifierFamily();

/// See also [HomePageNotifier].
class HomePageNotifierFamily extends Family<HomePageState> {
  /// See also [HomePageNotifier].
  const HomePageNotifierFamily();

  /// See also [HomePageNotifier].
  HomePageNotifierProvider call(
    ProductType? type,
  ) {
    return HomePageNotifierProvider(
      type,
    );
  }

  @override
  HomePageNotifierProvider getProviderOverride(
    covariant HomePageNotifierProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'homePageNotifierProvider';
}

/// See also [HomePageNotifier].
class HomePageNotifierProvider
    extends AutoDisposeNotifierProviderImpl<HomePageNotifier, HomePageState> {
  /// See also [HomePageNotifier].
  HomePageNotifierProvider(
    ProductType? type,
  ) : this._internal(
          () => HomePageNotifier()..type = type,
          from: homePageNotifierProvider,
          name: r'homePageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homePageNotifierHash,
          dependencies: HomePageNotifierFamily._dependencies,
          allTransitiveDependencies:
              HomePageNotifierFamily._allTransitiveDependencies,
          type: type,
        );

  HomePageNotifierProvider._internal(
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
  HomePageState runNotifierBuild(
    covariant HomePageNotifier notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(HomePageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomePageNotifierProvider._internal(
        () => create()..type = type,
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
  AutoDisposeNotifierProviderElement<HomePageNotifier, HomePageState>
      createElement() {
    return _HomePageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomePageNotifierProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomePageNotifierRef on AutoDisposeNotifierProviderRef<HomePageState> {
  /// The parameter `type` of this provider.
  ProductType? get type;
}

class _HomePageNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<HomePageNotifier, HomePageState>
    with HomePageNotifierRef {
  _HomePageNotifierProviderElement(super.provider);

  @override
  ProductType? get type => (origin as HomePageNotifierProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
