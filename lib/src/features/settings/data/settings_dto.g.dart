// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsDTO _$$_SettingsDTOFromJson(Map<String, dynamic> json) =>
    _$_SettingsDTO(
      getSalesNotification: json['get_sales_notification'] as bool,
      getNewProductsNotification: json['get_new_products_notification'] as bool,
      getDeliveryStatusNotification:
          json['get_delivery_status_notification'] as bool,
      isDarkMode: json['is_dark_mode'] as bool,
    );

Map<String, dynamic> _$$_SettingsDTOToJson(_$_SettingsDTO instance) =>
    <String, dynamic>{
      'get_sales_notification': instance.getSalesNotification,
      'get_new_products_notification': instance.getNewProductsNotification,
      'get_delivery_status_notification':
          instance.getDeliveryStatusNotification,
      'is_dark_mode': instance.isDarkMode,
    };
