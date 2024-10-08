// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_banner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextBannerDTO _$TextBannerDTOFromJson(Map<String, dynamic> json) {
  return _TextBannerDTO.fromJson(json);
}

/// @nodoc
mixin _$TextBannerDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this TextBannerDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextBannerDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextBannerDTOCopyWith<TextBannerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextBannerDTOCopyWith<$Res> {
  factory $TextBannerDTOCopyWith(
          TextBannerDTO value, $Res Function(TextBannerDTO) then) =
      _$TextBannerDTOCopyWithImpl<$Res, TextBannerDTO>;
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class _$TextBannerDTOCopyWithImpl<$Res, $Val extends TextBannerDTO>
    implements $TextBannerDTOCopyWith<$Res> {
  _$TextBannerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextBannerDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextBannerDTOImplCopyWith<$Res>
    implements $TextBannerDTOCopyWith<$Res> {
  factory _$$TextBannerDTOImplCopyWith(
          _$TextBannerDTOImpl value, $Res Function(_$TextBannerDTOImpl) then) =
      __$$TextBannerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class __$$TextBannerDTOImplCopyWithImpl<$Res>
    extends _$TextBannerDTOCopyWithImpl<$Res, _$TextBannerDTOImpl>
    implements _$$TextBannerDTOImplCopyWith<$Res> {
  __$$TextBannerDTOImplCopyWithImpl(
      _$TextBannerDTOImpl _value, $Res Function(_$TextBannerDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextBannerDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$TextBannerDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextBannerDTOImpl extends _TextBannerDTO {
  const _$TextBannerDTOImpl(
      {required this.id, required this.name, required this.description})
      : super._();

  factory _$TextBannerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextBannerDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'TextBannerDTO(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextBannerDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of TextBannerDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextBannerDTOImplCopyWith<_$TextBannerDTOImpl> get copyWith =>
      __$$TextBannerDTOImplCopyWithImpl<_$TextBannerDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextBannerDTOImplToJson(
      this,
    );
  }
}

abstract class _TextBannerDTO extends TextBannerDTO {
  const factory _TextBannerDTO(
      {required final int id,
      required final String name,
      required final String description}) = _$TextBannerDTOImpl;
  const _TextBannerDTO._() : super._();

  factory _TextBannerDTO.fromJson(Map<String, dynamic> json) =
      _$TextBannerDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;

  /// Create a copy of TextBannerDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextBannerDTOImplCopyWith<_$TextBannerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
