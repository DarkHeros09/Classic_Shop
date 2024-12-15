// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_widget_startup.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appStartupHash() => r'2e6a744b3b4f2a4595da8ceb45cb8864b3c52dd8';

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

/// list of providers to be warmed up
///
/// Copied from [appStartup].
@ProviderFor(appStartup)
const appStartupProvider = AppStartupFamily();

/// list of providers to be warmed up
///
/// Copied from [appStartup].
class AppStartupFamily extends Family<AsyncValue<void>> {
  /// list of providers to be warmed up
  ///
  /// Copied from [appStartup].
  const AppStartupFamily();

  /// list of providers to be warmed up
  ///
  /// Copied from [appStartup].
  AppStartupProvider call(
    BuildContext context,
  ) {
    return AppStartupProvider(
      context,
    );
  }

  @override
  AppStartupProvider getProviderOverride(
    covariant AppStartupProvider provider,
  ) {
    return call(
      provider.context,
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
  String? get name => r'appStartupProvider';
}

/// list of providers to be warmed up
///
/// Copied from [appStartup].
class AppStartupProvider extends FutureProvider<void> {
  /// list of providers to be warmed up
  ///
  /// Copied from [appStartup].
  AppStartupProvider(
    BuildContext context,
  ) : this._internal(
          (ref) => appStartup(
            ref as AppStartupRef,
            context,
          ),
          from: appStartupProvider,
          name: r'appStartupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$appStartupHash,
          dependencies: AppStartupFamily._dependencies,
          allTransitiveDependencies:
              AppStartupFamily._allTransitiveDependencies,
          context: context,
        );

  AppStartupProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  Override overrideWith(
    FutureOr<void> Function(AppStartupRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AppStartupProvider._internal(
        (ref) => create(ref as AppStartupRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  FutureProviderElement<void> createElement() {
    return _AppStartupProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AppStartupProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AppStartupRef on FutureProviderRef<void> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _AppStartupProviderElement extends FutureProviderElement<void>
    with AppStartupRef {
  _AppStartupProviderElement(super.provider);

  @override
  BuildContext get context => (origin as AppStartupProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
