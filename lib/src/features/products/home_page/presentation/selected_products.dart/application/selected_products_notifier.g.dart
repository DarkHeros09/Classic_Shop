// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_products_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedProductsNotifierHash() =>
    r'928d2d17bbb74bc8aec1671aef4052ef1f2cdb76';

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

abstract class _$SelectedProductsNotifier
    extends BuildlessAutoDisposeNotifier<SelectedProductsState> {
  late final ProductType? type;

  SelectedProductsState build(
    ProductType? type,
  );
}

/// See also [SelectedProductsNotifier].
@ProviderFor(SelectedProductsNotifier)
const selectedProductsNotifierProvider = SelectedProductsNotifierFamily();

/// See also [SelectedProductsNotifier].
class SelectedProductsNotifierFamily extends Family<SelectedProductsState> {
  /// See also [SelectedProductsNotifier].
  const SelectedProductsNotifierFamily();

  /// See also [SelectedProductsNotifier].
  SelectedProductsNotifierProvider call(
    ProductType? type,
  ) {
    return SelectedProductsNotifierProvider(
      type,
    );
  }

  @override
  SelectedProductsNotifierProvider getProviderOverride(
    covariant SelectedProductsNotifierProvider provider,
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
  String? get name => r'selectedProductsNotifierProvider';
}

/// See also [SelectedProductsNotifier].
class SelectedProductsNotifierProvider extends AutoDisposeNotifierProviderImpl<
    SelectedProductsNotifier, SelectedProductsState> {
  /// See also [SelectedProductsNotifier].
  SelectedProductsNotifierProvider(
    ProductType? type,
  ) : this._internal(
          () => SelectedProductsNotifier()..type = type,
          from: selectedProductsNotifierProvider,
          name: r'selectedProductsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedProductsNotifierHash,
          dependencies: SelectedProductsNotifierFamily._dependencies,
          allTransitiveDependencies:
              SelectedProductsNotifierFamily._allTransitiveDependencies,
          type: type,
        );

  SelectedProductsNotifierProvider._internal(
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
  SelectedProductsState runNotifierBuild(
    covariant SelectedProductsNotifier notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(SelectedProductsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SelectedProductsNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<SelectedProductsNotifier,
      SelectedProductsState> createElement() {
    return _SelectedProductsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedProductsNotifierProvider && other.type == type;
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
mixin SelectedProductsNotifierRef
    on AutoDisposeNotifierProviderRef<SelectedProductsState> {
  /// The parameter `type` of this provider.
  ProductType? get type;
}

class _SelectedProductsNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<SelectedProductsNotifier,
        SelectedProductsState> with SelectedProductsNotifierRef {
  _SelectedProductsNotifierProviderElement(super.provider);

  @override
  ProductType? get type => (origin as SelectedProductsNotifierProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
