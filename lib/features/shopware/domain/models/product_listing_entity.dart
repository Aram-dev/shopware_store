import 'package:equatable/equatable.dart';
import 'package:shopware_store/generated/json/base/json_field.dart';
import 'package:shopware_store/generated/json/product_listing_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ProductListingEntity extends Equatable {
  ProductListingEntity({
    this.elements,
    this.aggregations,
    this.page,
    this.limit,
    this.entity,
    this.total,
    this.states,
    this.sorting,
    this.currentFilters,
    this.availableSortings,
    this.streamId,
    this.apiAlias,
  });

  List<ProductListingElements>? elements;
  ProductListingAggregations? aggregations;
  int? page;
  int? limit;
  String? entity;
  int? total;
  List<dynamic>? states;
  String? sorting;
  ProductListingCurrentFilters? currentFilters;
  List<ProductListingAvailableSortings>? availableSortings;
  dynamic streamId;
  String? apiAlias;

  factory ProductListingEntity.fromJson(Map<String, dynamic> json) =>
      $ProductListingEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
  
  @override
  List<Object?> get props => [
    elements,
    aggregations,
    page,
    limit,
    entity,
    total,
    states,
    sorting,
    currentFilters,
    availableSortings,
    streamId,
    apiAlias,
  ];
}

@JsonSerializable()
class ProductListingElements extends Equatable {
  ProductListingElements({
    this.extensions,
    this.versionId,
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.parentId,
    this.childCount,
    this.taxId,
    this.manufacturerId,
    this.unitId,
    this.active,
    this.displayGroup,
    this.manufacturerNumber,
    this.ean,
    this.sales,
    this.productNumber,
    this.stock,
    this.availableStock,
    this.available,
    this.deliveryTimeId,
    this.deliveryTime,
    this.restockTime,
    this.isCloseout,
    this.purchaseSteps,
    this.maxPurchase,
    this.minPurchase,
    this.purchaseUnit,
    this.referenceUnit,
    this.shippingFree,
    this.markAsTopseller,
    this.weight,
    this.width,
    this.height,
    this.length,
    this.releaseDate,
    this.categoryTree,
    this.streamIds,
    this.optionIds,
    this.propertyIds,
    this.name,
    this.keywords,
    this.description,
    this.metaDescription,
    this.metaTitle,
    this.packUnit,
    this.packUnitPlural,
    this.tax,
    this.manufacturer,
    this.unit,
    this.cover,
    this.parent,
    this.children,
    this.media,
    this.cmsPageId,
    this.cmsPage,
    this.translations,
    this.categories,
    this.tags,
    this.properties,
    this.options,
    this.configuratorSettings,
    this.categoriesRo,
    this.coverId,
    this.tagIds,
    this.categoryIds,
    this.productReviews,
    this.ratingAverage,
    this.mainCategories,
    this.seoUrls,
    this.crossSellings,
    this.canonicalProductId,
    this.canonicalProduct,
    this.streams,
    this.downloads,
    this.states,
    this.customFields,
    this.id,
    this.calculatedPrices,
    this.calculatedPrice,
    this.sortedProperties,
    this.calculatedCheapestPrice,
    this.isNew,
    this.calculatedMaxPurchase,
    this.seoCategory,
    this.apiAlias,
  });

  ProductListingElementsExtensions? extensions;
  String? versionId;
  ProductListingElementsTranslated? translated;
  String? createdAt;
  String? updatedAt;
  String? parentId;
  int? childCount;
  String? taxId;
  String? manufacturerId;
  dynamic unitId;
  bool? active;
  String? displayGroup;
  dynamic manufacturerNumber;
  dynamic ean;
  int? sales;
  String? productNumber;
  int? stock;
  int? availableStock;
  bool? available;
  dynamic deliveryTimeId;
  dynamic deliveryTime;
  dynamic restockTime;
  bool? isCloseout;
  int? purchaseSteps;
  dynamic maxPurchase;
  int? minPurchase;
  int? purchaseUnit;
  int? referenceUnit;
  bool? shippingFree;
  bool? markAsTopseller;
  double? weight;
  dynamic width;
  dynamic height;
  dynamic length;
  dynamic releaseDate;
  List<String>? categoryTree;
  dynamic streamIds;
  List<String>? optionIds;
  List<String>? propertyIds;
  String? name;
  dynamic keywords;
  String? description;
  dynamic metaDescription;
  dynamic metaTitle;
  dynamic packUnit;
  dynamic packUnitPlural;
  ProductListingElementsTax? tax;
  ProductListingElementsManufacturer? manufacturer;
  dynamic unit;
  ProductListingElementsCover? cover;
  dynamic parent;
  dynamic children;
  dynamic media;
  String? cmsPageId;
  dynamic cmsPage;
  dynamic translations;
  dynamic categories;
  dynamic tags;
  dynamic properties;
  List<dynamic>? options;
  dynamic configuratorSettings;
  dynamic categoriesRo;
  String? coverId;
  dynamic tagIds;
  List<String>? categoryIds;
  dynamic productReviews;
  dynamic ratingAverage;
  dynamic mainCategories;
  dynamic seoUrls;
  dynamic crossSellings;
  dynamic canonicalProductId;
  dynamic canonicalProduct;
  dynamic streams;
  dynamic downloads;
  List<String>? states;
  ProductListingElementsCustomFields? customFields;
  String? id;
  List<dynamic>? calculatedPrices;
  ProductListingElementsCalculatedPrice? calculatedPrice;
  dynamic sortedProperties;
  ProductListingElementsCalculatedCheapestPrice? calculatedCheapestPrice;
  bool? isNew;
  int? calculatedMaxPurchase;
  dynamic seoCategory;
  String? apiAlias;

  factory ProductListingElements.fromJson(Map<String, dynamic> json) =>
      $ProductListingElementsFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingElementsToJson(this);

  @override
  List<Object?> get props => [
    extensions,
    versionId,
    translated,
    createdAt,
    updatedAt,
    parentId,
    childCount,
    taxId,
    manufacturerId,
    unitId,
    active,
    displayGroup,
    manufacturerNumber,
    ean,
    sales,
    productNumber,
    stock,
    availableStock,
    available,
    deliveryTimeId,
    deliveryTime,
    restockTime,
    isCloseout,
    purchaseSteps,
    maxPurchase,
    minPurchase,
    purchaseUnit,
    referenceUnit,
    shippingFree,
    markAsTopseller,
    weight,
    width,
    height,
    length,
    releaseDate,
    categoryTree,
    streamIds,
    optionIds,
    propertyIds,
    name,
    keywords,
    description,
    metaDescription,
    metaTitle,
    packUnit,
    packUnitPlural,
    tax,
    manufacturer,
    unit,
    cover,
    parent,
    children,
    media,
    cmsPageId,
    cmsPage,
    translations,
    categories,
    tags,
    properties,
    options,
    configuratorSettings,
    categoriesRo,
    coverId,
    tagIds,
    categoryIds,
    productReviews,
    ratingAverage,
    mainCategories,
    seoUrls,
    crossSellings,
    canonicalProductId,
    canonicalProduct,
    streams,
    downloads,
    states,
    customFields,
    id,
    calculatedPrices,
    calculatedPrice,
    sortedProperties,
    calculatedCheapestPrice,
    isNew,
    calculatedMaxPurchase,
    seoCategory,
    apiAlias,
  ];
}

@JsonSerializable()
class ProductListingElementsExtensions extends Equatable {
  ProductListingElementsExtensions({this.search});

  ProductListingElementsExtensionsSearch? search;

  factory ProductListingElementsExtensions.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsExtensionsFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsExtensionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [search];

}

@JsonSerializable()
class ProductListingElementsExtensionsSearch extends Equatable {
  ProductListingElementsExtensionsSearch({
    this.extensions,
    this.uniqueidentifier,
    this.translated,
    this.id,
    this.productNumber,
    this.autoIncrement,
  });

  List<dynamic>? extensions;
  @JSONField(name: '_uniqueIdentifier')
  dynamic uniqueidentifier;
  List<dynamic>? translated;
  String? id;
  String? productNumber;
  int? autoIncrement;

  factory ProductListingElementsExtensionsSearch.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsExtensionsSearchFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsExtensionsSearchToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [extensions, uniqueidentifier, translated, id, productNumber, autoIncrement];
}

@JsonSerializable()
class ProductListingElementsTranslated extends Equatable {
  ProductListingElementsTranslated({
    this.metaDescription,
    this.name,
    this.keywords,
    this.description,
    this.metaTitle,
    this.packUnit,
    this.packUnitPlural,
    this.customFields,
  });

  dynamic metaDescription;
  String? name;
  dynamic keywords;
  String? description;
  dynamic metaTitle;
  dynamic packUnit;
  dynamic packUnitPlural;
  ProductListingElementsTranslatedCustomFields? customFields;

  factory ProductListingElementsTranslated.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsTranslatedFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsTranslatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [metaDescription, name, keywords, description, metaTitle, packUnit, packUnitPlural, customFields];
}

@JsonSerializable()
class ProductListingElementsTranslatedCustomFields extends Equatable {
  ProductListingElementsTranslatedCustomFields({
    this.ngsImageRotationMedia,
    this.mediaclipIsProductCustomizable,
    this.mediaclipProductModule,
    this.mediaclipProductId,
  });

  @JSONField(name: 'ngs_image_rotation_media')
  String? ngsImageRotationMedia;
  @JSONField(name: 'mediaclip_is_product_customizable')
  bool? mediaclipIsProductCustomizable;
  @JSONField(name: 'mediaclip_product_module')
  String? mediaclipProductModule;
  @JSONField(name: 'mediaclip_product_id')
  String? mediaclipProductId;

  factory ProductListingElementsTranslatedCustomFields.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsTranslatedCustomFieldsFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsTranslatedCustomFieldsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [ngsImageRotationMedia, mediaclipIsProductCustomizable, mediaclipProductModule, mediaclipProductId];
}

@JsonSerializable()
class ProductListingElementsTax extends Equatable {
  ProductListingElementsTax({
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.taxRate,
    this.name,
    this.position,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  List<dynamic>? translated;
  String? createdAt;
  dynamic updatedAt;
  int? taxRate;
  String? name;
  int? position;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingElementsTax.fromJson(Map<String, dynamic> json) =>
      $ProductListingElementsTaxFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingElementsTaxToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [translated, createdAt, updatedAt, taxRate, name, position, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingElementsManufacturer extends Equatable {
  ProductListingElementsManufacturer({
    this.versionId,
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.mediaId,
    this.name,
    this.link,
    this.description,
    this.media,
    this.translations,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  String? versionId;
  ProductListingElementsManufacturerTranslated? translated;
  String? createdAt;
  dynamic updatedAt;
  dynamic mediaId;
  String? name;
  dynamic link;
  dynamic description;
  dynamic media;
  dynamic translations;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingElementsManufacturer.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsManufacturerFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsManufacturerToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [versionId, translated, createdAt, updatedAt, mediaId, name, link, description, media, translations, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingElementsManufacturerTranslated extends Equatable {
  ProductListingElementsManufacturerTranslated({
    this.name,
    this.description,
    this.customFields,
  });

  String? name;
  dynamic description;
  ProductListingElementsManufacturerTranslatedCustomFields? customFields;

  factory ProductListingElementsManufacturerTranslated.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsManufacturerTranslatedFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsManufacturerTranslatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, description, customFields];
}

@JsonSerializable()
class ProductListingElementsManufacturerTranslatedCustomFields extends Equatable {
  ProductListingElementsManufacturerTranslatedCustomFields();

  factory ProductListingElementsManufacturerTranslatedCustomFields.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsManufacturerTranslatedCustomFieldsFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsManufacturerTranslatedCustomFieldsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

@JsonSerializable()
class ProductListingElementsCover extends Equatable {
  ProductListingElementsCover({
    this.versionId,
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.productId,
    this.mediaId,
    this.position,
    this.media,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  String? versionId;
  List<dynamic>? translated;
  String? createdAt;
  dynamic updatedAt;
  String? productId;
  String? mediaId;
  int? position;
  ProductListingElementsCoverMedia? media;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingElementsCover.fromJson(Map<String, dynamic> json) =>
      $ProductListingElementsCoverFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingElementsCoverToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [versionId, translated, createdAt, updatedAt, productId, mediaId, position, media, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingElementsCoverMedia extends Equatable {
  ProductListingElementsCoverMedia({
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.mimeType,
    this.fileExtension,
    this.fileSize,
    this.title,
    this.metaData,
    this.uploadedAt,
    this.alt,
    this.url,
    this.fileName,
    this.translations,
    this.thumbnails,
    this.hasFile,
    this.private,
    this.path,
    this.config,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  ProductListingElementsCoverMediaTranslated? translated;
  String? createdAt;
  String? updatedAt;
  String? mimeType;
  String? fileExtension;
  int? fileSize;
  dynamic title;
  dynamic metaData;
  String? uploadedAt;
  dynamic alt;
  String? url;
  String? fileName;
  dynamic translations;
  List<dynamic>? thumbnails;
  bool? hasFile;
  bool? private;
  String? path;
  dynamic config;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingElementsCoverMedia.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCoverMediaFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCoverMediaToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [translated, createdAt, updatedAt, mimeType, fileExtension, fileSize, title, metaData, uploadedAt, alt, url, fileName, translations, thumbnails, hasFile, private, path, config, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingElementsCoverMediaTranslated extends Equatable {
  ProductListingElementsCoverMediaTranslated({
    this.alt,
    this.title,
    this.customFields,
  });

  dynamic alt;
  dynamic title;
  ProductListingElementsCoverMediaTranslatedCustomFields? customFields;

  factory ProductListingElementsCoverMediaTranslated.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCoverMediaTranslatedFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCoverMediaTranslatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [alt, title, customFields];
}

@JsonSerializable()
class ProductListingElementsCoverMediaTranslatedCustomFields extends Equatable {
  ProductListingElementsCoverMediaTranslatedCustomFields();

  factory ProductListingElementsCoverMediaTranslatedCustomFields.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCoverMediaTranslatedCustomFieldsFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCoverMediaTranslatedCustomFieldsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

@JsonSerializable()
class ProductListingElementsCustomFields extends Equatable {
  ProductListingElementsCustomFields({
    this.ngsImageRotationMedia,
    this.mediaclipIsProductCustomizable,
    this.mediaclipProductModule,
    this.mediaclipProductId,
  });

  @JSONField(name: 'ngs_image_rotation_media')
  String? ngsImageRotationMedia;
  @JSONField(name: 'mediaclip_is_product_customizable')
  bool? mediaclipIsProductCustomizable;
  @JSONField(name: 'mediaclip_product_module')
  String? mediaclipProductModule;
  @JSONField(name: 'mediaclip_product_id')
  String? mediaclipProductId;

  factory ProductListingElementsCustomFields.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCustomFieldsFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCustomFieldsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [ngsImageRotationMedia, mediaclipIsProductCustomizable, mediaclipProductModule, mediaclipProductId];
}

@JsonSerializable()
class ProductListingElementsCalculatedPrice extends Equatable {
  ProductListingElementsCalculatedPrice({
    this.unitPrice,
    this.quantity,
    this.totalPrice,
    this.calculatedTaxes,
    this.taxRules,
    this.referencePrice,
    this.listPrice,
    this.regulationPrice,
    this.apiAlias,
  });

  double? unitPrice;
  int? quantity;
  double? totalPrice;
  List<ProductListingElementsCalculatedPriceCalculatedTaxes>? calculatedTaxes;
  List<ProductListingElementsCalculatedPriceTaxRules>? taxRules;
  dynamic referencePrice;
  dynamic listPrice;
  dynamic regulationPrice;
  String? apiAlias;

  factory ProductListingElementsCalculatedPrice.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCalculatedPriceFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCalculatedPriceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [unitPrice, quantity, totalPrice, calculatedTaxes, taxRules, referencePrice, listPrice, regulationPrice, apiAlias];
}

@JsonSerializable()
class ProductListingElementsCalculatedPriceCalculatedTaxes extends Equatable {
  ProductListingElementsCalculatedPriceCalculatedTaxes({
    this.tax,
    this.taxRate,
    this.price,
    this.apiAlias,
  });

  double? tax;
  int? taxRate;
  double? price;
  String? apiAlias;

  factory ProductListingElementsCalculatedPriceCalculatedTaxes.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCalculatedPriceCalculatedTaxesFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCalculatedPriceCalculatedTaxesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [tax, taxRate, price, apiAlias];
}

@JsonSerializable()
class ProductListingElementsCalculatedPriceTaxRules extends Equatable {
  ProductListingElementsCalculatedPriceTaxRules({
    this.taxRate,
    this.percentage,
    this.apiAlias,
  });

  int? taxRate;
  int? percentage;
  String? apiAlias;

  factory ProductListingElementsCalculatedPriceTaxRules.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCalculatedPriceTaxRulesFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCalculatedPriceTaxRulesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [taxRate, percentage, apiAlias];
}

@JsonSerializable()
class ProductListingElementsCalculatedCheapestPrice extends Equatable {
  ProductListingElementsCalculatedCheapestPrice({
    this.unitPrice,
    this.quantity,
    this.totalPrice,
    this.calculatedTaxes,
    this.taxRules,
    this.referencePrice,
    this.listPrice,
    this.regulationPrice,
    this.hasRange,
    this.variantId,
    this.apiAlias,
  });

  double? unitPrice;
  int? quantity;
  double? totalPrice;
  List<ProductListingElementsCalculatedCheapestPriceCalculatedTaxes>? calculatedTaxes;
  List<ProductListingElementsCalculatedCheapestPriceTaxRules>? taxRules;
  dynamic referencePrice;
  dynamic listPrice;
  dynamic regulationPrice;
  bool? hasRange;
  String? variantId;
  String? apiAlias;

  factory ProductListingElementsCalculatedCheapestPrice.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCalculatedCheapestPriceFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCalculatedCheapestPriceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [unitPrice, quantity, totalPrice, calculatedTaxes, taxRules, referencePrice, listPrice, regulationPrice, hasRange, variantId, apiAlias];
}

@JsonSerializable()
class ProductListingElementsCalculatedCheapestPriceCalculatedTaxes extends Equatable {
  ProductListingElementsCalculatedCheapestPriceCalculatedTaxes({
    this.tax,
    this.taxRate,
    this.price,
    this.apiAlias,
  });

  double? tax;
  int? taxRate;
  double? price;
  String? apiAlias;

  factory ProductListingElementsCalculatedCheapestPriceCalculatedTaxes.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCalculatedCheapestPriceCalculatedTaxesFromJson(
    json,
  );

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCalculatedCheapestPriceCalculatedTaxesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [tax, taxRate, price, apiAlias];
}

@JsonSerializable()
class ProductListingElementsCalculatedCheapestPriceTaxRules extends Equatable {
  ProductListingElementsCalculatedCheapestPriceTaxRules({
    this.taxRate,
    this.percentage,
    this.apiAlias,
  });

  int? taxRate;
  int? percentage;
  String? apiAlias;

  factory ProductListingElementsCalculatedCheapestPriceTaxRules.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingElementsCalculatedCheapestPriceTaxRulesFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingElementsCalculatedCheapestPriceTaxRulesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [taxRate, percentage, apiAlias];
}

@JsonSerializable()
class ProductListingAggregations extends Equatable {
  ProductListingAggregations({
    this.manufacturer,
    this.price,
    this.rating,
    this.shippingFree,
    this.properties,
  });

  ProductListingAggregationsManufacturer? manufacturer;
  ProductListingAggregationsPrice? price;
  ProductListingAggregationsRating? rating;
  @JSONField(name: 'shipping-free')
  ProductListingAggregationsShippingFree? shippingFree;
  ProductListingAggregationsProperties? properties;

  factory ProductListingAggregations.fromJson(Map<String, dynamic> json) =>
      $ProductListingAggregationsFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingAggregationsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  List<Object?> get props => [
    manufacturer,
    price,
    rating,
    shippingFree,
    properties,
  ];
}

@JsonSerializable()
class ProductListingAggregationsManufacturer extends Equatable {
  ProductListingAggregationsManufacturer({
    this.name,
    this.entities,
    this.apiAlias,
  });

  String? name;
  List<ProductListingAggregationsManufacturerEntities>? entities;
  String? apiAlias;

  factory ProductListingAggregationsManufacturer.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsManufacturerFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsManufacturerToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, entities, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsManufacturerEntities extends Equatable {
  ProductListingAggregationsManufacturerEntities({
    this.versionId,
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.mediaId,
    this.name,
    this.link,
    this.description,
    this.media,
    this.translations,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  String? versionId;
  ProductListingAggregationsManufacturerEntitiesTranslated? translated;
  String? createdAt;
  dynamic updatedAt;
  dynamic mediaId;
  String? name;
  dynamic link;
  dynamic description;
  dynamic media;
  dynamic translations;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingAggregationsManufacturerEntities.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsManufacturerEntitiesFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsManufacturerEntitiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [versionId, translated, createdAt, updatedAt, mediaId, name, link, description, media, translations, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsManufacturerEntitiesTranslated extends Equatable {
  ProductListingAggregationsManufacturerEntitiesTranslated({
    this.name,
    this.description,
    this.customFields,
  });

  String? name;
  dynamic description;
  ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields? customFields;

  factory ProductListingAggregationsManufacturerEntitiesTranslated.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsManufacturerEntitiesTranslatedFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsManufacturerEntitiesTranslatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, description, customFields];
}

@JsonSerializable()
class ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields extends Equatable {
  ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields();

  factory ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields.fromJson(
    Map<String, dynamic> json,
  ) =>
      $ProductListingAggregationsManufacturerEntitiesTranslatedCustomFieldsFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsManufacturerEntitiesTranslatedCustomFieldsToJson(
        this,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

@JsonSerializable()
class ProductListingAggregationsPrice extends Equatable {
  ProductListingAggregationsPrice({
    this.name,
    this.min,
    this.max,
    this.avg,
    this.sum,
    this.apiAlias,
  });

  String? name;
  String? min;
  String? max;
  dynamic avg;
  dynamic sum;
  String? apiAlias;

  factory ProductListingAggregationsPrice.fromJson(Map<String, dynamic> json) =>
      $ProductListingAggregationsPriceFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingAggregationsPriceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, min, max, avg, sum, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsRating extends Equatable {
  ProductListingAggregationsRating({
    this.name,
    this.max,
    this.apiAlias,
  });

  String? name;
  dynamic max;
  String? apiAlias;

  factory ProductListingAggregationsRating.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsRatingFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsRatingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, max, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsShippingFree extends Equatable {
  ProductListingAggregationsShippingFree({
    this.name,
    this.max,
    this.apiAlias,
  });

  String? name;
  String? max;
  String? apiAlias;

  factory ProductListingAggregationsShippingFree.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsShippingFreeFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsShippingFreeToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, max, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsProperties extends Equatable {
  ProductListingAggregationsProperties({
    this.name,
    this.entities,
    this.apiAlias,
  });

  String? name;
  List<ProductListingAggregationsPropertiesEntities>? entities;
  String? apiAlias;

  factory ProductListingAggregationsProperties.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsPropertiesFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, entities, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntities extends Equatable {
  ProductListingAggregationsPropertiesEntities({
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.displayType,
    this.sortingType,
    this.description,
    this.position,
    this.filterable,
    this.visibleOnProductDetailPage,
    this.options,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  ProductListingAggregationsPropertiesEntitiesTranslated? translated;
  String? createdAt;
  dynamic updatedAt;
  String? name;
  String? displayType;
  String? sortingType;
  dynamic description;
  int? position;
  bool? filterable;
  bool? visibleOnProductDetailPage;
  List<ProductListingAggregationsPropertiesEntitiesOptions>? options;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingAggregationsPropertiesEntities.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsPropertiesEntitiesFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [translated, createdAt, updatedAt, name, displayType, sortingType, description, position, filterable, visibleOnProductDetailPage, options, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesTranslated extends Equatable {
  ProductListingAggregationsPropertiesEntitiesTranslated({
    this.name,
    this.description,
    this.position,
    this.customFields,
  });

  String? name;
  dynamic description;
  int? position;
  ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields? customFields;

  factory ProductListingAggregationsPropertiesEntitiesTranslated.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsPropertiesEntitiesTranslatedFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesTranslatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, description, position, customFields];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields extends Equatable {
  ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields();

  factory ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields.fromJson(
    Map<String, dynamic> json,
  ) =>
      $ProductListingAggregationsPropertiesEntitiesTranslatedCustomFieldsFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesTranslatedCustomFieldsToJson(
        this,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesOptions extends Equatable {
  ProductListingAggregationsPropertiesEntitiesOptions({
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.groupId,
    this.name,
    this.position,
    this.colorHexCode,
    this.mediaId,
    this.group,
    this.media,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  ProductListingAggregationsPropertiesEntitiesOptionsTranslated? translated;
  String? createdAt;
  String? updatedAt;
  String? groupId;
  String? name;
  int? position;
  String? colorHexCode;
  dynamic mediaId;
  ProductListingAggregationsPropertiesEntitiesOptionsGroup? group;
  dynamic media;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingAggregationsPropertiesEntitiesOptions.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsPropertiesEntitiesOptionsFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesOptionsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [translated, createdAt, updatedAt, groupId, name, position, colorHexCode, mediaId, group, media, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesOptionsTranslated extends Equatable {
  ProductListingAggregationsPropertiesEntitiesOptionsTranslated({
    this.name,
    this.position,
    this.customFields,
  });

  String? name;
  int? position;
  ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields? customFields;

  factory ProductListingAggregationsPropertiesEntitiesOptionsTranslated.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedFromJson(
    json,
  );

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedToJson(
        this,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, position, customFields];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields extends Equatable {
  ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields();

  factory ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields.fromJson(
    Map<String, dynamic> json,
  ) =>
      $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFieldsFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFieldsToJson(
        this,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesOptionsGroup extends Equatable {
  ProductListingAggregationsPropertiesEntitiesOptionsGroup({
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.displayType,
    this.sortingType,
    this.description,
    this.position,
    this.filterable,
    this.visibleOnProductDetailPage,
    this.options,
    this.customFields,
    this.id,
    this.apiAlias,
  });

  ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated? translated;
  String? createdAt;
  dynamic updatedAt;
  String? name;
  String? displayType;
  String? sortingType;
  dynamic description;
  int? position;
  bool? filterable;
  bool? visibleOnProductDetailPage;
  dynamic options;
  dynamic customFields;
  String? id;
  String? apiAlias;

  factory ProductListingAggregationsPropertiesEntitiesOptionsGroup.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAggregationsPropertiesEntitiesOptionsGroupFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesOptionsGroupToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [translated, createdAt, updatedAt, name, displayType, sortingType, description, position, filterable, visibleOnProductDetailPage, options, customFields, id, apiAlias];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated extends Equatable {
  ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated({
    this.name,
    this.description,
    this.position,
    this.customFields,
  });

  String? name;
  dynamic description;
  int? position;
  ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields? customFields;

  factory ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated.fromJson(
    Map<String, dynamic> json,
  ) =>
      $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedToJson(
        this,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [name, description, position, customFields];
}

@JsonSerializable()
class ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields extends Equatable {
  ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields();

  factory ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields.fromJson(
    Map<String, dynamic> json,
  ) =>
      $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFieldsFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFieldsToJson(
        this,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

@JsonSerializable()
class ProductListingCurrentFilters extends Equatable {
  ProductListingCurrentFilters({
    this.navigationId,
    this.manufacturer,
    this.price,
    this.rating,
    this.shippingFree,
    this.properties,
  });

  String? navigationId;
  List<dynamic>? manufacturer;
  ProductListingCurrentFiltersPrice? price;
  dynamic rating;
  @JSONField(name: 'shipping-free')
  bool? shippingFree;
  List<dynamic>? properties;

  factory ProductListingCurrentFilters.fromJson(Map<String, dynamic> json) =>
      $ProductListingCurrentFiltersFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingCurrentFiltersToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [navigationId, manufacturer, price, rating, shippingFree, properties];
}

@JsonSerializable()
class ProductListingCurrentFiltersPrice extends Equatable {
  ProductListingCurrentFiltersPrice({
    this.min,
    this.max,
  });

  int? min;
  int? max;

  factory ProductListingCurrentFiltersPrice.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingCurrentFiltersPriceFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingCurrentFiltersPriceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [min, max];
}

@JsonSerializable()
class ProductListingAvailableSortings extends Equatable {
  ProductListingAvailableSortings({
    this.translated,
    this.createdAt,
    this.updatedAt,
    this.key,
    this.priority,
    this.label,
    this.apiAlias,
  });

  ProductListingAvailableSortingsTranslated? translated;
  String? createdAt;
  dynamic updatedAt;
  String? key;
  int? priority;
  String? label;
  String? apiAlias;

  factory ProductListingAvailableSortings.fromJson(Map<String, dynamic> json) =>
      $ProductListingAvailableSortingsFromJson(json);

  Map<String, dynamic> toJson() => $ProductListingAvailableSortingsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [translated, createdAt, updatedAt, key, priority, label, apiAlias];
}

@JsonSerializable()
class ProductListingAvailableSortingsTranslated extends Equatable {
  ProductListingAvailableSortingsTranslated({
    this.label,
  });

  String? label;

  factory ProductListingAvailableSortingsTranslated.fromJson(
    Map<String, dynamic> json,
  ) => $ProductListingAvailableSortingsTranslatedFromJson(json);

  Map<String, dynamic> toJson() =>
      $ProductListingAvailableSortingsTranslatedToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [label];
}
