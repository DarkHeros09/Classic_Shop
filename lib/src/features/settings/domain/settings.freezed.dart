// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Settings {
  bool get getSalesNotification => throw _privateConstructorUsedError;
  bool get getNewProductsNotification => throw _privateConstructorUsedError;
  bool get getDeliveryStatusNotification => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call(
      {bool getSalesNotification,
      bool getNewProductsNotification,
      bool getDeliveryStatusNotification,
      bool isDarkMode});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$SettingsImplCopyWith<$Res>
    implements $SettingsCopyWith<$Res> {
  factory _$$SettingsImplCopyWith(
          _$SettingsImpl value, $Res Function(_$SettingsImpl) then) =
      __$$SettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool getSalesNotification,
      bool getNewProductsNotification,
      bool getDeliveryStatusNotification,
      bool isDarkMode});
}

/// @nodoc
class __$$SettingsImplCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$SettingsImpl>
    implements _$$SettingsImplCopyWith<$Res> {
  __$$SettingsImplCopyWithImpl(
      _$SettingsImpl _value, $Res Function(_$SettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSalesNotification = null,
    Object? getNewProductsNotification = null,
    Object? getDeliveryStatusNotification = null,
    Object? isDarkMode = null,
  }) {
    return _then(_$SettingsImpl(
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

class _$SettingsImpl implements _Settings {
  const _$SettingsImpl(
      {required this.getSalesNotification,
      required this.getNewProductsNotification,
      required this.getDeliveryStatusNotification,
      required this.isDarkMode});

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
    return 'Settings(getSalesNotification: $getSalesNotification, getNewProductsNotification: $getNewProductsNotification, getDeliveryStatusNotification: $getDeliveryStatusNotification, isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, getSalesNotification,
      getNewProductsNotification, getDeliveryStatusNotification, isDarkMode);

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      __$$SettingsImplCopyWithImpl<_$SettingsImpl>(this, _$identity);
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {required final bool getSalesNotification,
      required final bool getNewProductsNotification,
      required final bool getDeliveryStatusNotification,
      required final bool isDarkMode}) = _$SettingsImpl;

  @override
  bool get getSalesNotification;
  @override
  bool get getNewProductsNotification;
  @override
  bool get getDeliveryStatusNotification;
  @override
  bool get isDarkMode;

  /// Create a copy of Settings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsImplCopyWith<_$SettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}