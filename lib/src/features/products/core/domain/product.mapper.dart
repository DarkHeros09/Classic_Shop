// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product.dart';

class ProductMapper extends ClassMapperBase<Product> {
  ProductMapper._();

  static ProductMapper? _instance;
  static ProductMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Product';

  static int _$id(Product v) => v.id;
  static const Field<Product, int> _f$id = Field('id', _$id);
  static String _$name(Product v) => v.name;
  static const Field<Product, String> _f$name = Field('name', _$name);
  static String _$description(Product v) => v.description;
  static const Field<Product, String> _f$description =
      Field('description', _$description);
  static int _$productId(Product v) => v.productId;
  static const Field<Product, int> _f$productId =
      Field('productId', _$productId, key: 'product_id');
  static int _$categoryId(Product v) => v.categoryId;
  static const Field<Product, int> _f$categoryId =
      Field('categoryId', _$categoryId, key: 'category_id');
  static int _$brandId(Product v) => v.brandId;
  static const Field<Product, int> _f$brandId =
      Field('brandId', _$brandId, key: 'brand_id');
  static String _$brandName(Product v) => v.brandName;
  static const Field<Product, String> _f$brandName =
      Field('brandName', _$brandName, key: 'brand_name');
  static int _$productSku(Product v) => v.productSku;
  static const Field<Product, int> _f$productSku =
      Field('productSku', _$productSku, key: 'product_sku');
  static int _$qtyInStock(Product v) => v.qtyInStock;
  static const Field<Product, int> _f$qtyInStock =
      Field('qtyInStock', _$qtyInStock, key: 'qty_in_stock');
  static String _$productImage1(Product v) => v.productImage1;
  static const Field<Product, String> _f$productImage1 =
      Field('productImage1', _$productImage1, key: 'product_image1');
  static String _$productImage2(Product v) => v.productImage2;
  static const Field<Product, String> _f$productImage2 =
      Field('productImage2', _$productImage2, key: 'product_image2');
  static String _$productImage3(Product v) => v.productImage3;
  static const Field<Product, String> _f$productImage3 =
      Field('productImage3', _$productImage3, key: 'product_image3');
  static String _$color(Product v) => v.color;
  static const Field<Product, String> _f$color = Field('color', _$color);
  static String _$price(Product v) => v.price;
  static const Field<Product, String> _f$price = Field('price', _$price);
  static bool _$active(Product v) => v.active;
  static const Field<Product, bool> _f$active = Field('active', _$active);
  static bool _$parentProductActive(Product v) => v.parentProductActive;
  static const Field<Product, bool> _f$parentProductActive = Field(
      'parentProductActive', _$parentProductActive,
      key: 'parent_product_active');
  static DateTime _$createdAt(Product v) => v.createdAt;
  static const Field<Product, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static DateTime _$updatedAt(Product v) => v.updatedAt;
  static const Field<Product, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static int? _$categoryPromoId(Product v) => v.categoryPromoId;
  static const Field<Product, int> _f$categoryPromoId =
      Field('categoryPromoId', _$categoryPromoId, key: 'category_promo_id');
  static String? _$categoryPromoName(Product v) => v.categoryPromoName;
  static const Field<Product, String> _f$categoryPromoName = Field(
      'categoryPromoName', _$categoryPromoName,
      key: 'category_promo_name');
  static String? _$categoryPromoDescription(Product v) =>
      v.categoryPromoDescription;
  static const Field<Product, String> _f$categoryPromoDescription = Field(
      'categoryPromoDescription', _$categoryPromoDescription,
      key: 'category_promo_description');
  static int? _$categoryPromoDiscountRate(Product v) =>
      v.categoryPromoDiscountRate;
  static const Field<Product, int> _f$categoryPromoDiscountRate = Field(
      'categoryPromoDiscountRate', _$categoryPromoDiscountRate,
      key: 'category_promo_discount_rate');
  static bool? _$categoryPromoActive(Product v) => v.categoryPromoActive;
  static const Field<Product, bool> _f$categoryPromoActive = Field(
      'categoryPromoActive', _$categoryPromoActive,
      key: 'category_promo_active');
  static DateTime? _$categoryPromoStartDate(Product v) =>
      v.categoryPromoStartDate;
  static const Field<Product, DateTime> _f$categoryPromoStartDate = Field(
      'categoryPromoStartDate', _$categoryPromoStartDate,
      key: 'category_promo_start_date');
  static DateTime? _$categoryPromoEndDate(Product v) => v.categoryPromoEndDate;
  static const Field<Product, DateTime> _f$categoryPromoEndDate = Field(
      'categoryPromoEndDate', _$categoryPromoEndDate,
      key: 'category_promo_end_date');
  static int? _$brandPromoId(Product v) => v.brandPromoId;
  static const Field<Product, int> _f$brandPromoId =
      Field('brandPromoId', _$brandPromoId, key: 'brand_promo_id');
  static String? _$brandPromoName(Product v) => v.brandPromoName;
  static const Field<Product, String> _f$brandPromoName =
      Field('brandPromoName', _$brandPromoName, key: 'brand_promo_name');
  static String? _$brandPromoDescription(Product v) => v.brandPromoDescription;
  static const Field<Product, String> _f$brandPromoDescription = Field(
      'brandPromoDescription', _$brandPromoDescription,
      key: 'brand_promo_description');
  static int? _$brandPromoDiscountRate(Product v) => v.brandPromoDiscountRate;
  static const Field<Product, int> _f$brandPromoDiscountRate = Field(
      'brandPromoDiscountRate', _$brandPromoDiscountRate,
      key: 'brand_promo_discount_rate');
  static bool? _$brandPromoActive(Product v) => v.brandPromoActive;
  static const Field<Product, bool> _f$brandPromoActive =
      Field('brandPromoActive', _$brandPromoActive, key: 'brand_promo_active');
  static DateTime? _$brandPromoStartDate(Product v) => v.brandPromoStartDate;
  static const Field<Product, DateTime> _f$brandPromoStartDate = Field(
      'brandPromoStartDate', _$brandPromoStartDate,
      key: 'brand_promo_start_date');
  static DateTime? _$brandPromoEndDate(Product v) => v.brandPromoEndDate;
  static const Field<Product, DateTime> _f$brandPromoEndDate = Field(
      'brandPromoEndDate', _$brandPromoEndDate,
      key: 'brand_promo_end_date');
  static int? _$productPromoId(Product v) => v.productPromoId;
  static const Field<Product, int> _f$productPromoId =
      Field('productPromoId', _$productPromoId, key: 'product_promo_id');
  static String? _$productPromoName(Product v) => v.productPromoName;
  static const Field<Product, String> _f$productPromoName =
      Field('productPromoName', _$productPromoName, key: 'product_promo_name');
  static String? _$productPromoDescription(Product v) =>
      v.productPromoDescription;
  static const Field<Product, String> _f$productPromoDescription = Field(
      'productPromoDescription', _$productPromoDescription,
      key: 'product_promo_description');
  static int? _$productPromoDiscountRate(Product v) =>
      v.productPromoDiscountRate;
  static const Field<Product, int> _f$productPromoDiscountRate = Field(
      'productPromoDiscountRate', _$productPromoDiscountRate,
      key: 'product_promo_discount_rate');
  static bool? _$productPromoActive(Product v) => v.productPromoActive;
  static const Field<Product, bool> _f$productPromoActive = Field(
      'productPromoActive', _$productPromoActive,
      key: 'product_promo_active');
  static DateTime? _$productPromoStartDate(Product v) =>
      v.productPromoStartDate;
  static const Field<Product, DateTime> _f$productPromoStartDate = Field(
      'productPromoStartDate', _$productPromoStartDate,
      key: 'product_promo_start_date');
  static DateTime? _$productPromoEndDate(Product v) => v.productPromoEndDate;
  static const Field<Product, DateTime> _f$productPromoEndDate = Field(
      'productPromoEndDate', _$productPromoEndDate,
      key: 'product_promo_end_date');
  static bool? _$nextAvailable(Product v) => v.nextAvailable;
  static const Field<Product, bool> _f$nextAvailable =
      Field('nextAvailable', _$nextAvailable, key: 'next_available');

  @override
  final MappableFields<Product> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #productId: _f$productId,
    #categoryId: _f$categoryId,
    #brandId: _f$brandId,
    #brandName: _f$brandName,
    #productSku: _f$productSku,
    #qtyInStock: _f$qtyInStock,
    #productImage1: _f$productImage1,
    #productImage2: _f$productImage2,
    #productImage3: _f$productImage3,
    #color: _f$color,
    #price: _f$price,
    #active: _f$active,
    #parentProductActive: _f$parentProductActive,
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

  static Product _instantiate(DecodingData data) {
    return Product(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        productId: data.dec(_f$productId),
        categoryId: data.dec(_f$categoryId),
        brandId: data.dec(_f$brandId),
        brandName: data.dec(_f$brandName),
        productSku: data.dec(_f$productSku),
        qtyInStock: data.dec(_f$qtyInStock),
        productImage1: data.dec(_f$productImage1),
        productImage2: data.dec(_f$productImage2),
        productImage3: data.dec(_f$productImage3),
        color: data.dec(_f$color),
        price: data.dec(_f$price),
        active: data.dec(_f$active),
        parentProductActive: data.dec(_f$parentProductActive),
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

  static Product fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Product>(map);
  }

  static Product fromJsonString(String json) {
    return ensureInitialized().decodeJson<Product>(json);
  }
}

mixin ProductMappable {
  String toJsonString() {
    return ProductMapper.ensureInitialized()
        .encodeJson<Product>(this as Product);
  }

  Map<String, dynamic> toJson() {
    return ProductMapper.ensureInitialized()
        .encodeMap<Product>(this as Product);
  }

  ProductCopyWith<Product, Product, Product> get copyWith =>
      _ProductCopyWithImpl(this as Product, $identity, $identity);
  @override
  String toString() {
    return ProductMapper.ensureInitialized().stringifyValue(this as Product);
  }

  @override
  bool operator ==(Object other) {
    return ProductMapper.ensureInitialized()
        .equalsValue(this as Product, other);
  }

  @override
  int get hashCode {
    return ProductMapper.ensureInitialized().hashValue(this as Product);
  }
}

extension ProductValueCopy<$R, $Out> on ObjectCopyWith<$R, Product, $Out> {
  ProductCopyWith<$R, Product, $Out> get $asProduct =>
      $base.as((v, t, t2) => _ProductCopyWithImpl(v, t, t2));
}

abstract class ProductCopyWith<$R, $In extends Product, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? name,
      String? description,
      int? productId,
      int? categoryId,
      int? brandId,
      String? brandName,
      int? productSku,
      int? qtyInStock,
      String? productImage1,
      String? productImage2,
      String? productImage3,
      String? color,
      String? price,
      bool? active,
      bool? parentProductActive,
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
  ProductCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Product, $Out>
    implements ProductCopyWith<$R, Product, $Out> {
  _ProductCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Product> $mapper =
      ProductMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? name,
          String? description,
          int? productId,
          int? categoryId,
          int? brandId,
          String? brandName,
          int? productSku,
          int? qtyInStock,
          String? productImage1,
          String? productImage2,
          String? productImage3,
          String? color,
          String? price,
          bool? active,
          bool? parentProductActive,
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
        if (description != null) #description: description,
        if (productId != null) #productId: productId,
        if (categoryId != null) #categoryId: categoryId,
        if (brandId != null) #brandId: brandId,
        if (brandName != null) #brandName: brandName,
        if (productSku != null) #productSku: productSku,
        if (qtyInStock != null) #qtyInStock: qtyInStock,
        if (productImage1 != null) #productImage1: productImage1,
        if (productImage2 != null) #productImage2: productImage2,
        if (productImage3 != null) #productImage3: productImage3,
        if (color != null) #color: color,
        if (price != null) #price: price,
        if (active != null) #active: active,
        if (parentProductActive != null)
          #parentProductActive: parentProductActive,
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
  Product $make(CopyWithData data) => Product(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      productId: data.get(#productId, or: $value.productId),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      brandId: data.get(#brandId, or: $value.brandId),
      brandName: data.get(#brandName, or: $value.brandName),
      productSku: data.get(#productSku, or: $value.productSku),
      qtyInStock: data.get(#qtyInStock, or: $value.qtyInStock),
      productImage1: data.get(#productImage1, or: $value.productImage1),
      productImage2: data.get(#productImage2, or: $value.productImage2),
      productImage3: data.get(#productImage3, or: $value.productImage3),
      color: data.get(#color, or: $value.color),
      price: data.get(#price, or: $value.price),
      active: data.get(#active, or: $value.active),
      parentProductActive:
          data.get(#parentProductActive, or: $value.parentProductActive),
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
  ProductCopyWith<$R2, Product, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProductCopyWithImpl($value, $cast, t);
}
