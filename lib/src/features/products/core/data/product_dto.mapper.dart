// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_dto.dart';

class ProductDTOMapper extends ClassMapperBase<ProductDTO> {
  ProductDTOMapper._();

  static ProductDTOMapper? _instance;
  static ProductDTOMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductDTOMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProductDTO';

  static int _$id(ProductDTO v) => v.id;
  static const Field<ProductDTO, int> _f$id = Field('id', _$id);
  static String _$name(ProductDTO v) => v.name;
  static const Field<ProductDTO, String> _f$name = Field('name', _$name);
  static int _$productId(ProductDTO v) => v.productId;
  static const Field<ProductDTO, int> _f$productId =
      Field('productId', _$productId, key: 'product_id');
  static int _$categoryId(ProductDTO v) => v.categoryId;
  static const Field<ProductDTO, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: 'category_id');
  static int _$brandId(ProductDTO v) => v.brandId;
  static const Field<ProductDTO, int> _f$brandId =
      Field('brandId', _$brandId, key: 'brand_id');
  static String _$brandName(ProductDTO v) => v.brandName;
  static const Field<ProductDTO, String> _f$brandName =
      Field('brandName', _$brandName, key: 'brand_name');
  static int _$productSku(ProductDTO v) => v.productSku;
  static const Field<ProductDTO, int> _f$productSku =
      Field('productSku', _$productSku, key: 'product_sku');
  static int _$qtyInStock(ProductDTO v) => v.qtyInStock;
  static const Field<ProductDTO, int> _f$qtyInStock =
      Field('qtyInStock', _$qtyInStock, key: 'qty_in_stock');
  static String _$productImage_1(ProductDTO v) => v.productImage_1;
  static const Field<ProductDTO, String> _f$productImage_1 =
      Field('productImage_1', _$productImage_1, key: 'product_image_1');
  static String _$productImage_2(ProductDTO v) => v.productImage_2;
  static const Field<ProductDTO, String> _f$productImage_2 =
      Field('productImage_2', _$productImage_2, key: 'product_image_2');
  static String _$productImage_3(ProductDTO v) => v.productImage_3;
  static const Field<ProductDTO, String> _f$productImage_3 =
      Field('productImage_3', _$productImage_3, key: 'product_image_3');
  static String _$sizeValue(ProductDTO v) => v.sizeValue;
  static const Field<ProductDTO, String> _f$sizeValue =
      Field('sizeValue', _$sizeValue, key: 'size_value');
  static String _$colorValue(ProductDTO v) => v.colorValue;
  static const Field<ProductDTO, String> _f$colorValue =
      Field('colorValue', _$colorValue, key: 'color_value');
  static String _$price(ProductDTO v) => v.price;
  static const Field<ProductDTO, String> _f$price = Field('price', _$price);
  static bool _$parentProductActive(ProductDTO v) => v.parentProductActive;
  static const Field<ProductDTO, bool> _f$parentProductActive = Field(
      'parentProductActive', _$parentProductActive,
      key: 'parent_product_active');
  static bool _$active(ProductDTO v) => v.active;
  static const Field<ProductDTO, bool> _f$active = Field('active', _$active);
  static DateTime _$createdAt(ProductDTO v) => v.createdAt;
  static const Field<ProductDTO, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static DateTime _$updatedAt(ProductDTO v) => v.updatedAt;
  static const Field<ProductDTO, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static int? _$categoryPromoId(ProductDTO v) => v.categoryPromoId;
  static const Field<ProductDTO, int> _f$categoryPromoId =
      Field('categoryPromoId', _$categoryPromoId, key: 'category_promo_id');
  static String? _$categoryPromoName(ProductDTO v) => v.categoryPromoName;
  static const Field<ProductDTO, String> _f$categoryPromoName = Field(
      'categoryPromoName', _$categoryPromoName,
      key: 'category_promo_name');
  static String? _$categoryPromoDescription(ProductDTO v) =>
      v.categoryPromoDescription;
  static const Field<ProductDTO, String> _f$categoryPromoDescription = Field(
      'categoryPromoDescription', _$categoryPromoDescription,
      key: 'category_promo_description');
  static int? _$categoryPromoDiscountRate(ProductDTO v) =>
      v.categoryPromoDiscountRate;
  static const Field<ProductDTO, int> _f$categoryPromoDiscountRate = Field(
      'categoryPromoDiscountRate', _$categoryPromoDiscountRate,
      key: 'category_promo_discount_rate');
  static bool? _$categoryPromoActive(ProductDTO v) => v.categoryPromoActive;
  static const Field<ProductDTO, bool> _f$categoryPromoActive = Field(
      'categoryPromoActive', _$categoryPromoActive,
      key: 'category_promo_active');
  static DateTime? _$categoryPromoStartDate(ProductDTO v) =>
      v.categoryPromoStartDate;
  static const Field<ProductDTO, DateTime> _f$categoryPromoStartDate = Field(
      'categoryPromoStartDate', _$categoryPromoStartDate,
      key: 'category_promo_start_date');
  static DateTime? _$categoryPromoEndDate(ProductDTO v) =>
      v.categoryPromoEndDate;
  static const Field<ProductDTO, DateTime> _f$categoryPromoEndDate = Field(
      'categoryPromoEndDate', _$categoryPromoEndDate,
      key: 'category_promo_end_date');
  static int? _$brandPromoId(ProductDTO v) => v.brandPromoId;
  static const Field<ProductDTO, int> _f$brandPromoId =
      Field('brandPromoId', _$brandPromoId, key: 'brand_promo_id');
  static String? _$brandPromoName(ProductDTO v) => v.brandPromoName;
  static const Field<ProductDTO, String> _f$brandPromoName =
      Field('brandPromoName', _$brandPromoName, key: 'brand_promo_name');
  static String? _$brandPromoDescription(ProductDTO v) =>
      v.brandPromoDescription;
  static const Field<ProductDTO, String> _f$brandPromoDescription = Field(
      'brandPromoDescription', _$brandPromoDescription,
      key: 'brand_promo_description');
  static int? _$brandPromoDiscountRate(ProductDTO v) =>
      v.brandPromoDiscountRate;
  static const Field<ProductDTO, int> _f$brandPromoDiscountRate = Field(
      'brandPromoDiscountRate', _$brandPromoDiscountRate,
      key: 'brand_promo_discount_rate');
  static bool? _$brandPromoActive(ProductDTO v) => v.brandPromoActive;
  static const Field<ProductDTO, bool> _f$brandPromoActive =
      Field('brandPromoActive', _$brandPromoActive, key: 'brand_promo_active');
  static DateTime? _$brandPromoStartDate(ProductDTO v) => v.brandPromoStartDate;
  static const Field<ProductDTO, DateTime> _f$brandPromoStartDate = Field(
      'brandPromoStartDate', _$brandPromoStartDate,
      key: 'brand_promo_start_date');
  static DateTime? _$brandPromoEndDate(ProductDTO v) => v.brandPromoEndDate;
  static const Field<ProductDTO, DateTime> _f$brandPromoEndDate = Field(
      'brandPromoEndDate', _$brandPromoEndDate,
      key: 'brand_promo_end_date');
  static int? _$productPromoId(ProductDTO v) => v.productPromoId;
  static const Field<ProductDTO, int> _f$productPromoId =
      Field('productPromoId', _$productPromoId, key: 'product_promo_id');
  static String? _$productPromoName(ProductDTO v) => v.productPromoName;
  static const Field<ProductDTO, String> _f$productPromoName =
      Field('productPromoName', _$productPromoName, key: 'product_promo_name');
  static String? _$productPromoDescription(ProductDTO v) =>
      v.productPromoDescription;
  static const Field<ProductDTO, String> _f$productPromoDescription = Field(
      'productPromoDescription', _$productPromoDescription,
      key: 'product_promo_description');
  static int? _$productPromoDiscountRate(ProductDTO v) =>
      v.productPromoDiscountRate;
  static const Field<ProductDTO, int> _f$productPromoDiscountRate = Field(
      'productPromoDiscountRate', _$productPromoDiscountRate,
      key: 'product_promo_discount_rate');
  static bool? _$productPromoActive(ProductDTO v) => v.productPromoActive;
  static const Field<ProductDTO, bool> _f$productPromoActive = Field(
      'productPromoActive', _$productPromoActive,
      key: 'product_promo_active');
  static DateTime? _$productPromoStartDate(ProductDTO v) =>
      v.productPromoStartDate;
  static const Field<ProductDTO, DateTime> _f$productPromoStartDate = Field(
      'productPromoStartDate', _$productPromoStartDate,
      key: 'product_promo_start_date');
  static DateTime? _$productPromoEndDate(ProductDTO v) => v.productPromoEndDate;
  static const Field<ProductDTO, DateTime> _f$productPromoEndDate = Field(
      'productPromoEndDate', _$productPromoEndDate,
      key: 'product_promo_end_date');
  static bool? _$nextAvailable(ProductDTO v) => v.nextAvailable;
  static const Field<ProductDTO, bool> _f$nextAvailable =
      Field('nextAvailable', _$nextAvailable, key: 'next_available');

  @override
  final MappableFields<ProductDTO> fields = const {
    #id: _f$id,
    #name: _f$name,
    #productId: _f$productId,
    #categoryId: _f$categoryId,
    #brandId: _f$brandId,
    #brandName: _f$brandName,
    #productSku: _f$productSku,
    #qtyInStock: _f$qtyInStock,
    #productImage_1: _f$productImage_1,
    #productImage_2: _f$productImage_2,
    #productImage_3: _f$productImage_3,
    #sizeValue: _f$sizeValue,
    #colorValue: _f$colorValue,
    #price: _f$price,
    #parentProductActive: _f$parentProductActive,
    #active: _f$active,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #categoryPromoId: _f$categoryPromoId,
    #categoryPromoName: _f$categoryPromoName,
    #categoryPromoDescription: _f$categoryPromoDescription,
    #categoryPromoDiscountRate: _f$categoryPromoDiscountRate,
    #categoryPromoActive: _f$categoryPromoActive,
    #categoryPromoStartDate: _f$categoryPromoStartDate,
    #categoryPromoEndDate: _f$categoryPromoEndDate,
    #brandPromoId: _f$brandPromoId,
    #brandPromoName: _f$brandPromoName,
    #brandPromoDescription: _f$brandPromoDescription,
    #brandPromoDiscountRate: _f$brandPromoDiscountRate,
    #brandPromoActive: _f$brandPromoActive,
    #brandPromoStartDate: _f$brandPromoStartDate,
    #brandPromoEndDate: _f$brandPromoEndDate,
    #productPromoId: _f$productPromoId,
    #productPromoName: _f$productPromoName,
    #productPromoDescription: _f$productPromoDescription,
    #productPromoDiscountRate: _f$productPromoDiscountRate,
    #productPromoActive: _f$productPromoActive,
    #productPromoStartDate: _f$productPromoStartDate,
    #productPromoEndDate: _f$productPromoEndDate,
    #nextAvailable: _f$nextAvailable,
  };

  static ProductDTO _instantiate(DecodingData data) {
    return ProductDTO(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        productId: data.dec(_f$productId),
        categoryId: data.dec(_f$categoryId),
        brandId: data.dec(_f$brandId),
        brandName: data.dec(_f$brandName),
        productSku: data.dec(_f$productSku),
        qtyInStock: data.dec(_f$qtyInStock),
        productImage_1: data.dec(_f$productImage_1),
        productImage_2: data.dec(_f$productImage_2),
        productImage_3: data.dec(_f$productImage_3),
        sizeValue: data.dec(_f$sizeValue),
        colorValue: data.dec(_f$colorValue),
        price: data.dec(_f$price),
        parentProductActive: data.dec(_f$parentProductActive),
        active: data.dec(_f$active),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        categoryPromoId: data.dec(_f$categoryPromoId),
        categoryPromoName: data.dec(_f$categoryPromoName),
        categoryPromoDescription: data.dec(_f$categoryPromoDescription),
        categoryPromoDiscountRate: data.dec(_f$categoryPromoDiscountRate),
        categoryPromoActive: data.dec(_f$categoryPromoActive),
        categoryPromoStartDate: data.dec(_f$categoryPromoStartDate),
        categoryPromoEndDate: data.dec(_f$categoryPromoEndDate),
        brandPromoId: data.dec(_f$brandPromoId),
        brandPromoName: data.dec(_f$brandPromoName),
        brandPromoDescription: data.dec(_f$brandPromoDescription),
        brandPromoDiscountRate: data.dec(_f$brandPromoDiscountRate),
        brandPromoActive: data.dec(_f$brandPromoActive),
        brandPromoStartDate: data.dec(_f$brandPromoStartDate),
        brandPromoEndDate: data.dec(_f$brandPromoEndDate),
        productPromoId: data.dec(_f$productPromoId),
        productPromoName: data.dec(_f$productPromoName),
        productPromoDescription: data.dec(_f$productPromoDescription),
        productPromoDiscountRate: data.dec(_f$productPromoDiscountRate),
        productPromoActive: data.dec(_f$productPromoActive),
        productPromoStartDate: data.dec(_f$productPromoStartDate),
        productPromoEndDate: data.dec(_f$productPromoEndDate),
        nextAvailable: data.dec(_f$nextAvailable));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductDTO fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductDTO>(map);
  }

  static ProductDTO fromJsonString(String json) {
    return ensureInitialized().decodeJson<ProductDTO>(json);
  }
}

mixin ProductDTOMappable {
  String toJsonString() {
    return ProductDTOMapper.ensureInitialized()
        .encodeJson<ProductDTO>(this as ProductDTO);
  }

  Map<String, dynamic> toJson() {
    return ProductDTOMapper.ensureInitialized()
        .encodeMap<ProductDTO>(this as ProductDTO);
  }

  ProductDTOCopyWith<ProductDTO, ProductDTO, ProductDTO> get copyWith =>
      _ProductDTOCopyWithImpl(this as ProductDTO, $identity, $identity);
  @override
  String toString() {
    return ProductDTOMapper.ensureInitialized()
        .stringifyValue(this as ProductDTO);
  }

  @override
  bool operator ==(Object other) {
    return ProductDTOMapper.ensureInitialized()
        .equalsValue(this as ProductDTO, other);
  }

  @override
  int get hashCode {
    return ProductDTOMapper.ensureInitialized().hashValue(this as ProductDTO);
  }
}

extension ProductDTOValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductDTO, $Out> {
  ProductDTOCopyWith<$R, ProductDTO, $Out> get $asProductDTO =>
      $base.as((v, t, t2) => _ProductDTOCopyWithImpl(v, t, t2));
}

abstract class ProductDTOCopyWith<$R, $In extends ProductDTO, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      int? productId,
      int? categoryId,
      int? brandId,
      String? brandName,
      int? productSku,
      int? qtyInStock,
      String? productImage_1,
      String? productImage_2,
      String? productImage_3,
      String? sizeValue,
      String? colorValue,
      String? price,
      bool? parentProductActive,
      bool? active,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? categoryPromoId,
      String? categoryPromoName,
      String? categoryPromoDescription,
      int? categoryPromoDiscountRate,
      bool? categoryPromoActive,
      DateTime? categoryPromoStartDate,
      DateTime? categoryPromoEndDate,
      int? brandPromoId,
      String? brandPromoName,
      String? brandPromoDescription,
      int? brandPromoDiscountRate,
      bool? brandPromoActive,
      DateTime? brandPromoStartDate,
      DateTime? brandPromoEndDate,
      int? productPromoId,
      String? productPromoName,
      String? productPromoDescription,
      int? productPromoDiscountRate,
      bool? productPromoActive,
      DateTime? productPromoStartDate,
      DateTime? productPromoEndDate,
      bool? nextAvailable});
  ProductDTOCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductDTOCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductDTO, $Out>
    implements ProductDTOCopyWith<$R, ProductDTO, $Out> {
  _ProductDTOCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductDTO> $mapper =
      ProductDTOMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          int? productId,
          int? categoryId,
          int? brandId,
          String? brandName,
          int? productSku,
          int? qtyInStock,
          String? productImage_1,
          String? productImage_2,
          String? productImage_3,
          String? sizeValue,
          String? colorValue,
          String? price,
          bool? parentProductActive,
          bool? active,
          DateTime? createdAt,
          DateTime? updatedAt,
          Object? categoryPromoId = $none,
          Object? categoryPromoName = $none,
          Object? categoryPromoDescription = $none,
          Object? categoryPromoDiscountRate = $none,
          Object? categoryPromoActive = $none,
          Object? categoryPromoStartDate = $none,
          Object? categoryPromoEndDate = $none,
          Object? brandPromoId = $none,
          Object? brandPromoName = $none,
          Object? brandPromoDescription = $none,
          Object? brandPromoDiscountRate = $none,
          Object? brandPromoActive = $none,
          Object? brandPromoStartDate = $none,
          Object? brandPromoEndDate = $none,
          Object? productPromoId = $none,
          Object? productPromoName = $none,
          Object? productPromoDescription = $none,
          Object? productPromoDiscountRate = $none,
          Object? productPromoActive = $none,
          Object? productPromoStartDate = $none,
          Object? productPromoEndDate = $none,
          Object? nextAvailable = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (productId != null) #productId: productId,
        if (categoryId != null) #categoryId: categoryId,
        if (brandId != null) #brandId: brandId,
        if (brandName != null) #brandName: brandName,
        if (productSku != null) #productSku: productSku,
        if (qtyInStock != null) #qtyInStock: qtyInStock,
        if (productImage_1 != null) #productImage_1: productImage_1,
        if (productImage_2 != null) #productImage_2: productImage_2,
        if (productImage_3 != null) #productImage_3: productImage_3,
        if (sizeValue != null) #sizeValue: sizeValue,
        if (colorValue != null) #colorValue: colorValue,
        if (price != null) #price: price,
        if (parentProductActive != null)
          #parentProductActive: parentProductActive,
        if (active != null) #active: active,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (categoryPromoId != $none) #categoryPromoId: categoryPromoId,
        if (categoryPromoName != $none) #categoryPromoName: categoryPromoName,
        if (categoryPromoDescription != $none)
          #categoryPromoDescription: categoryPromoDescription,
        if (categoryPromoDiscountRate != $none)
          #categoryPromoDiscountRate: categoryPromoDiscountRate,
        if (categoryPromoActive != $none)
          #categoryPromoActive: categoryPromoActive,
        if (categoryPromoStartDate != $none)
          #categoryPromoStartDate: categoryPromoStartDate,
        if (categoryPromoEndDate != $none)
          #categoryPromoEndDate: categoryPromoEndDate,
        if (brandPromoId != $none) #brandPromoId: brandPromoId,
        if (brandPromoName != $none) #brandPromoName: brandPromoName,
        if (brandPromoDescription != $none)
          #brandPromoDescription: brandPromoDescription,
        if (brandPromoDiscountRate != $none)
          #brandPromoDiscountRate: brandPromoDiscountRate,
        if (brandPromoActive != $none) #brandPromoActive: brandPromoActive,
        if (brandPromoStartDate != $none)
          #brandPromoStartDate: brandPromoStartDate,
        if (brandPromoEndDate != $none) #brandPromoEndDate: brandPromoEndDate,
        if (productPromoId != $none) #productPromoId: productPromoId,
        if (productPromoName != $none) #productPromoName: productPromoName,
        if (productPromoDescription != $none)
          #productPromoDescription: productPromoDescription,
        if (productPromoDiscountRate != $none)
          #productPromoDiscountRate: productPromoDiscountRate,
        if (productPromoActive != $none)
          #productPromoActive: productPromoActive,
        if (productPromoStartDate != $none)
          #productPromoStartDate: productPromoStartDate,
        if (productPromoEndDate != $none)
          #productPromoEndDate: productPromoEndDate,
        if (nextAvailable != $none) #nextAvailable: nextAvailable
      }));
  @override
  ProductDTO $make(CopyWithData data) => ProductDTO(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      productId: data.get(#productId, or: $value.productId),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      brandId: data.get(#brandId, or: $value.brandId),
      brandName: data.get(#brandName, or: $value.brandName),
      productSku: data.get(#productSku, or: $value.productSku),
      qtyInStock: data.get(#qtyInStock, or: $value.qtyInStock),
      productImage_1: data.get(#productImage_1, or: $value.productImage_1),
      productImage_2: data.get(#productImage_2, or: $value.productImage_2),
      productImage_3: data.get(#productImage_3, or: $value.productImage_3),
      sizeValue: data.get(#sizeValue, or: $value.sizeValue),
      colorValue: data.get(#colorValue, or: $value.colorValue),
      price: data.get(#price, or: $value.price),
      parentProductActive:
          data.get(#parentProductActive, or: $value.parentProductActive),
      active: data.get(#active, or: $value.active),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      categoryPromoId: data.get(#categoryPromoId, or: $value.categoryPromoId),
      categoryPromoName:
          data.get(#categoryPromoName, or: $value.categoryPromoName),
      categoryPromoDescription: data.get(#categoryPromoDescription,
          or: $value.categoryPromoDescription),
      categoryPromoDiscountRate: data.get(#categoryPromoDiscountRate,
          or: $value.categoryPromoDiscountRate),
      categoryPromoActive:
          data.get(#categoryPromoActive, or: $value.categoryPromoActive),
      categoryPromoStartDate:
          data.get(#categoryPromoStartDate, or: $value.categoryPromoStartDate),
      categoryPromoEndDate:
          data.get(#categoryPromoEndDate, or: $value.categoryPromoEndDate),
      brandPromoId: data.get(#brandPromoId, or: $value.brandPromoId),
      brandPromoName: data.get(#brandPromoName, or: $value.brandPromoName),
      brandPromoDescription:
          data.get(#brandPromoDescription, or: $value.brandPromoDescription),
      brandPromoDiscountRate:
          data.get(#brandPromoDiscountRate, or: $value.brandPromoDiscountRate),
      brandPromoActive:
          data.get(#brandPromoActive, or: $value.brandPromoActive),
      brandPromoStartDate:
          data.get(#brandPromoStartDate, or: $value.brandPromoStartDate),
      brandPromoEndDate:
          data.get(#brandPromoEndDate, or: $value.brandPromoEndDate),
      productPromoId: data.get(#productPromoId, or: $value.productPromoId),
      productPromoName:
          data.get(#productPromoName, or: $value.productPromoName),
      productPromoDescription: data.get(#productPromoDescription,
          or: $value.productPromoDescription),
      productPromoDiscountRate: data.get(#productPromoDiscountRate,
          or: $value.productPromoDiscountRate),
      productPromoActive:
          data.get(#productPromoActive, or: $value.productPromoActive),
      productPromoStartDate:
          data.get(#productPromoStartDate, or: $value.productPromoStartDate),
      productPromoEndDate:
          data.get(#productPromoEndDate, or: $value.productPromoEndDate),
      nextAvailable: data.get(#nextAvailable, or: $value.nextAvailable));

  @override
  ProductDTOCopyWith<$R2, ProductDTO, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductDTOCopyWithImpl($value, $cast, t);
}
