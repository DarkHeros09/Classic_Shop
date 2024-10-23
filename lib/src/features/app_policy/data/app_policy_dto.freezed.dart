// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_policy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppPolicyDTO _$AppPolicyDTOFromJson(Map<String, dynamic> json) {
  return _AppPolicyDTO.fromJson(json);
}

/// @nodoc
mixin _$AppPolicyDTO {
  int get id => throw _privateConstructorUsedError;
  String? get policy => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AppPolicyDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppPolicyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPolicyDTOCopyWith<AppPolicyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPolicyDTOCopyWith<$Res> {
  factory $AppPolicyDTOCopyWith(
          AppPolicyDTO value, $Res Function(AppPolicyDTO) then) =
      _$AppPolicyDTOCopyWithImpl<$Res, AppPolicyDTO>;
  @useResult
  $Res call({int id, String? policy, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class _$AppPolicyDTOCopyWithImpl<$Res, $Val extends AppPolicyDTO>
    implements $AppPolicyDTOCopyWith<$Res> {
  _$AppPolicyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPolicyDTO
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
abstract class _$$AppPolicyDTOImplCopyWith<$Res>
    implements $AppPolicyDTOCopyWith<$Res> {
  factory _$$AppPolicyDTOImplCopyWith(
          _$AppPolicyDTOImpl value, $Res Function(_$AppPolicyDTOImpl) then) =
      __$$AppPolicyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? policy, DateTime? createdAt, DateTime? updatedAt});
}

/// @nodoc
class __$$AppPolicyDTOImplCopyWithImpl<$Res>
    extends _$AppPolicyDTOCopyWithImpl<$Res, _$AppPolicyDTOImpl>
    implements _$$AppPolicyDTOImplCopyWith<$Res> {
  __$$AppPolicyDTOImplCopyWithImpl(
      _$AppPolicyDTOImpl _value, $Res Function(_$AppPolicyDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPolicyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? policy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AppPolicyDTOImpl(
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
@JsonSerializable()
class _$AppPolicyDTOImpl extends _AppPolicyDTO {
  const _$AppPolicyDTOImpl(
      {required this.id,
      required this.policy,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$AppPolicyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppPolicyDTOImplFromJson(json);

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
    return 'AppPolicyDTO(id: $id, policy: $policy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPolicyDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, policy, createdAt, updatedAt);

  /// Create a copy of AppPolicyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPolicyDTOImplCopyWith<_$AppPolicyDTOImpl> get copyWith =>
      __$$AppPolicyDTOImplCopyWithImpl<_$AppPolicyDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppPolicyDTOImplToJson(
      this,
    );
  }
}

abstract class _AppPolicyDTO extends AppPolicyDTO {
  const factory _AppPolicyDTO(
      {required final int id,
      required final String? policy,
      required final DateTime? createdAt,
      required final DateTime? updatedAt}) = _$AppPolicyDTOImpl;
  const _AppPolicyDTO._() : super._();

  factory _AppPolicyDTO.fromJson(Map<String, dynamic> json) =
      _$AppPolicyDTOImpl.fromJson;

  @override
  int get id;
  @override
  String? get policy;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of AppPolicyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPolicyDTOImplCopyWith<_$AppPolicyDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
