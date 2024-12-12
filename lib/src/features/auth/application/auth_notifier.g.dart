// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCredentialsHash() => r'10d16f1137c3437fc34a8faddd79b6c7b3a2d142';

/// See also [getCredentials].
@ProviderFor(getCredentials)
final getCredentialsProvider =
    AutoDisposeFutureProvider<CredentialsDTO?>.internal(
  getCredentials,
  name: r'getCredentialsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCredentialsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCredentialsRef = AutoDisposeFutureProviderRef<CredentialsDTO?>;
String _$tokenValidStreamHash() => r'681e79d67a6902e822979b375c7275e35de435a1';

/// See also [tokenValidStream].
@ProviderFor(tokenValidStream)
final tokenValidStreamProvider = StreamProvider<bool>.internal(
  tokenValidStream,
  name: r'tokenValidStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tokenValidStreamHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TokenValidStreamRef = StreamProviderRef<bool>;
String _$authNotifierHash() => r'fbec732600449bcabb12bcc3b043c7a20a413011';

/// See also [AuthNotifier].
@ProviderFor(AuthNotifier)
final authNotifierProvider = NotifierProvider<AuthNotifier, AuthState>.internal(
  AuthNotifier.new,
  name: r'authNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthNotifier = Notifier<AuthState>;
String _$authStreamHash() => r'1f90a1318e8a4390c70fe0b3fe9e5419b366e508';

/// See also [AuthStream].
@ProviderFor(AuthStream)
final authStreamProvider = StreamNotifierProvider<AuthStream, User?>.internal(
  AuthStream.new,
  name: r'authStreamProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authStreamHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$AuthStream = StreamNotifier<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
