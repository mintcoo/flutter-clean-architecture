// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_cases.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$useCasesHash() => r'f04522da0d5f77fc40db226617eeefb7d387affc';

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

/// See also [useCases].
@ProviderFor(useCases)
const useCasesProvider = UseCasesFamily();

/// See also [useCases].
class UseCasesFamily extends Family<UseCases> {
  /// See also [useCases].
  const UseCasesFamily();

  /// See also [useCases].
  UseCasesProvider call({
    required NoteRepository repository,
  }) {
    return UseCasesProvider(
      repository: repository,
    );
  }

  @override
  UseCasesProvider getProviderOverride(
    covariant UseCasesProvider provider,
  ) {
    return call(
      repository: provider.repository,
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
  String? get name => r'useCasesProvider';
}

/// See also [useCases].
class UseCasesProvider extends AutoDisposeProvider<UseCases> {
  /// See also [useCases].
  UseCasesProvider({
    required NoteRepository repository,
  }) : this._internal(
          (ref) => useCases(
            ref as UseCasesRef,
            repository: repository,
          ),
          from: useCasesProvider,
          name: r'useCasesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$useCasesHash,
          dependencies: UseCasesFamily._dependencies,
          allTransitiveDependencies: UseCasesFamily._allTransitiveDependencies,
          repository: repository,
        );

  UseCasesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.repository,
  }) : super.internal();

  final NoteRepository repository;

  @override
  Override overrideWith(
    UseCases Function(UseCasesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UseCasesProvider._internal(
        (ref) => create(ref as UseCasesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        repository: repository,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<UseCases> createElement() {
    return _UseCasesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UseCasesProvider && other.repository == repository;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, repository.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UseCasesRef on AutoDisposeProviderRef<UseCases> {
  /// The parameter `repository` of this provider.
  NoteRepository get repository;
}

class _UseCasesProviderElement extends AutoDisposeProviderElement<UseCases>
    with UseCasesRef {
  _UseCasesProviderElement(super.provider);

  @override
  NoteRepository get repository => (origin as UseCasesProvider).repository;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
