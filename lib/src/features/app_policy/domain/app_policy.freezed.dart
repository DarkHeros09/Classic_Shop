// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppPolicy {
  int get id => throw _privateConstructorUsedError;
  String? get policy => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of AppPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPolicyCopyWith<AppPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPolicyCopyWith<$Res> {
  factory $AppPolicyCopyWith(AppPolicy value, $Res Function(AppPolicy) then) =
      _$AppPolicyCopyWithImpl<$Res, AppPolicy>;
  @useResult
  $Res call({int id, String? policy, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class _$AppPolicyCopyWithImpl<$Res, $Val extends AppPolicy>
    implements $AppPolicyCopyWith<$Res> {
  _$AppPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? policy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppPolicyImplCopyWith<$Res>
    implements $AppPolicyCopyWith<$Res> {
  factory _$$AppPolicyImplCopyWith(
          _$AppPolicyImpl value, $Res Function(_$AppPolicyImpl) then) =
      __$$AppPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? policy, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class __$$AppPolicyImplCopyWithImpl<$Res>
    extends _$AppPolicyCopyWithImpl<$Res, _$AppPolicyImpl>
    implements _$$AppPolicyImplCopyWith<$Res> {
  __$$AppPolicyImplCopyWithImpl(
      _$AppPolicyImpl _value, $Res Function(_$AppPolicyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? policy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppPolicyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$AppPolicyImpl implements _AppPolicy {
  const _$AppPolicyImpl(
      {required this.id,
      required this.policy,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int id;
  @override
  final String? policy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AppPolicy(id: $id, policy: $policy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPolicyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, policy, createdAt, updatedAt);

  /// Create a copy of AppPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPolicyImplCopyWith<_$AppPolicyImpl> get copyWith =>
      __$$AppPolicyImplCopyWithImpl<_$AppPolicyImpl>(this, _$identity);
}

abstract class _AppPolicy implements AppPolicy {
  const factory _AppPolicy(
      {required final int id,
      required final String? policy,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$AppPolicyImpl;

  @override
  int get id;
  @override
  String? get policy;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of AppPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPolicyImplCopyWith<_$AppPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
