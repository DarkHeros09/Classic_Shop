// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextBanner {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextBannerCopyWith<TextBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextBannerCopyWith<$Res> {
  factory $TextBannerCopyWith(
          TextBanner value, $Res Function(TextBanner) then) =
      _$TextBannerCopyWithImpl<$Res, TextBanner>;
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class _$TextBannerCopyWithImpl<$Res, $Val extends TextBanner>
    implements $TextBannerCopyWith<$Res> {
  _$TextBannerCopyWithImpl(this._value, this._then);

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
abstract class _$$TextBannerImplCopyWith<$Res>
    implements $TextBannerCopyWith<$Res> {
  factory _$$TextBannerImplCopyWith(
          _$TextBannerImpl value, $Res Function(_$TextBannerImpl) then) =
      __$$TextBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description});
}

/// @nodoc
class __$$TextBannerImplCopyWithImpl<$Res>
    extends _$TextBannerCopyWithImpl<$Res, _$TextBannerImpl>
    implements _$$TextBannerImplCopyWith<$Res> {
  __$$TextBannerImplCopyWithImpl(
      _$TextBannerImpl _value, $Res Function(_$TextBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$TextBannerImpl(
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

class _$TextBannerImpl implements _TextBanner {
  const _$TextBannerImpl(
      {required this.id, required this.name, required this.description});

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'TextBanner(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextBannerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextBannerImplCopyWith<_$TextBannerImpl> get copyWith =>
      __$$TextBannerImplCopyWithImpl<_$TextBannerImpl>(this, _$identity);
}

abstract class _TextBanner implements TextBanner {
  const factory _TextBanner(
      {required final int id,
      required final String name,
      required final String description}) = _$TextBannerImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$TextBannerImplCopyWith<_$TextBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
