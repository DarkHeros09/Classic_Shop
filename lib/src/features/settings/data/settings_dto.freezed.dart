// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsDTO _$SettingsDTOFromJson(Map<String, dynamic> json) {
  return _SettingsDTO.fromJson(json);
}

/// @nodoc
mixin _$SettingsDTO {
  bool get getSalesNotification => throw _privateConstructorUsedError;
  bool get getNewProductsNotification => throw _privateConstructorUsedError;
  bool get getDeliveryStatusNotification => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsDTOCopyWith<SettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDTOCopyWith<$Res> {
  factory $SettingsDTOCopyWith(
          SettingsDTO value, $Res Function(SettingsDTO) then) =
      _$SettingsDTOCopyWithImpl<$Res, SettingsDTO>;
  @useResult
  $Res call(
      {bool getSalesNotification,
      bool getNewProductsNotification,
      bool getDeliveryStatusNotification,
      bool isDarkMode});
}

/// @nodoc
class _$SettingsDTOCopyWithImpl<$Res, $Val extends SettingsDTO>
    implements $SettingsDTOCopyWith<$Res> {
  _$SettingsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSalesNotification = null,
    Object? getNewProductsNotification = null,
    Object? getDeliveryStatusNotification = null,
    Object? isDarkMode = null,
  }) {
    return _then(_value.copyWith(
      getSalesNotification: null == getSalesNotification
          ? _value.getSalesNotification
          : getSalesNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      getNewProductsNotification: null == getNewProductsNotification
          ? _value.getNewProductsNotification
          : getNewProductsNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      getDeliveryStatusNotification: null == getDeliveryStatusNotification
          ? _value.getDeliveryStatusNotification
          : getDeliveryStatusNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsDTOImplCopyWith<$Res>
    implements $SettingsDTOCopyWith<$Res> {
  factory _$$SettingsDTOImplCopyWith(
          _$SettingsDTOImpl value, $Res Function(_$SettingsDTOImpl) then) =
      __$$SettingsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool getSalesNotification,
      bool getNewProductsNotification,
      bool getDeliveryStatusNotification,
      bool isDarkMode});
}

/// @nodoc
class __$$SettingsDTOImplCopyWithImpl<$Res>
    extends _$SettingsDTOCopyWithImpl<$Res, _$SettingsDTOImpl>
    implements _$$SettingsDTOImplCopyWith<$Res> {
  __$$SettingsDTOImplCopyWithImpl(
      _$SettingsDTOImpl _value, $Res Function(_$SettingsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSalesNotification = null,
    Object? getNewProductsNotification = null,
    Object? getDeliveryStatusNotification = null,
    Object? isDarkMode = null,
  }) {
    return _then(_$SettingsDTOImpl(
      getSalesNotification: null == getSalesNotification
          ? _value.getSalesNotification
          : getSalesNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      getNewProductsNotification: null == getNewProductsNotification
          ? _value.getNewProductsNotification
          : getNewProductsNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      getDeliveryStatusNotification: null == getDeliveryStatusNotification
          ? _value.getDeliveryStatusNotification
          : getDeliveryStatusNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsDTOImpl extends _SettingsDTO {
  const _$SettingsDTOImpl(
      {required this.getSalesNotification,
      required this.getNewProductsNotification,
      required this.getDeliveryStatusNotification,
      required this.isDarkMode})
      : super._();

  factory _$SettingsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsDTOImplFromJson(json);

  @override
  final bool getSalesNotification;
  @override
  final bool getNewProductsNotification;
  @override
  final bool getDeliveryStatusNotification;
  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'SettingsDTO(getSalesNotification: $getSalesNotification, getNewProductsNotification: $getNewProductsNotification, getDeliveryStatusNotification: $getDeliveryStatusNotification, isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsDTOImpl &&
            (identical(other.getSalesNotification, getSalesNotification) ||
                other.getSalesNotification == getSalesNotification) &&
            (identical(other.getNewProductsNotification,
                    getNewProductsNotification) ||
                other.getNewProductsNotification ==
                    getNewProductsNotification) &&
            (identical(other.getDeliveryStatusNotification,
                    getDeliveryStatusNotification) ||
                other.getDeliveryStatusNotification ==
                    getDeliveryStatusNotification) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, getSalesNotification,
      getNewProductsNotification, getDeliveryStatusNotification, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsDTOImplCopyWith<_$SettingsDTOImpl> get copyWith =>
      __$$SettingsDTOImplCopyWithImpl<_$SettingsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsDTOImplToJson(
      this,
    );
  }
}

abstract class _SettingsDTO extends SettingsDTO {
  const factory _SettingsDTO(
      {required final bool getSalesNotification,
      required final bool getNewProductsNotification,
      required final bool getDeliveryStatusNotification,
      required final bool isDarkMode}) = _$SettingsDTOImpl;
  const _SettingsDTO._() : super._();

  factory _SettingsDTO.fromJson(Map<String, dynamic> json) =
      _$SettingsDTOImpl.fromJson;

  @override
  bool get getSalesNotification;
  @override
  bool get getNewProductsNotification;
  @override
  bool get getDeliveryStatusNotification;
  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$SettingsDTOImplCopyWith<_$SettingsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
