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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextBannerDTO _$TextBannerDTOFromJson(Map<String, dynamic> json) {
  return _TextBannerDTO.fromJson(json);
}

/// @nodoc
mixin _$TextBannerDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_TextBannerDTOCopyWith<$Res>
    implements $TextBannerDTOCopyWith<$Res> {
  factory _$$_TextBannerDTOCopyWith(
          _$_TextBannerDTO value, $Res Function(_$_TextBannerDTO) then) =
      __$$_TextBannerDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class __$$_TextBannerDTOCopyWithImpl<$Res>
    extends _$TextBannerDTOCopyWithImpl<$Res, _$_TextBannerDTO>
    implements _$$_TextBannerDTOCopyWith<$Res> {
  __$$_TextBannerDTOCopyWithImpl(
      _$_TextBannerDTO _value, $Res Function(_$_TextBannerDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_TextBannerDTO(
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
class _$_TextBannerDTO extends _TextBannerDTO {
  const _$_TextBannerDTO(
      {required this.id, required this.name, required this.description})
      : super._();

  factory _$_TextBannerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TextBannerDTOFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextBannerDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextBannerDTOCopyWith<_$_TextBannerDTO> get copyWith =>
      __$$_TextBannerDTOCopyWithImpl<_$_TextBannerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextBannerDTOToJson(
      this,
    );
  }
}

abstract class _TextBannerDTO extends TextBannerDTO {
  const factory _TextBannerDTO(
      {required final int id,
      required final String name,
      required final String description}) = _$_TextBannerDTO;
  const _TextBannerDTO._() : super._();

  factory _TextBannerDTO.fromJson(Map<String, dynamic> json) =
      _$_TextBannerDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_TextBannerDTOCopyWith<_$_TextBannerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
