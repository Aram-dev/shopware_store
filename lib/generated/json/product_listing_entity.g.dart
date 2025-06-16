import 'package:shopware_store/generated/json/base/json_convert_content.dart';
import 'package:shopware_store/features/shopware/domain/models/product_listing_entity.dart';

ProductListingEntity $ProductListingEntityFromJson(Map<String, dynamic> json) {
  final ProductListingEntity productListingEntity = ProductListingEntity();
  final List<ProductListingElements>? elements = (json['elements'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<ProductListingElements>(e) as ProductListingElements)
      .toList();
  if (elements != null) {
    productListingEntity.elements = elements;
  }
  final ProductListingAggregations? aggregations = jsonConvert.convert<
      ProductListingAggregations>(json['aggregations']);
  if (aggregations != null) {
    productListingEntity.aggregations = aggregations;
  }
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    productListingEntity.page = page;
  }
  final int? limit = jsonConvert.convert<int>(json['limit']);
  if (limit != null) {
    productListingEntity.limit = limit;
  }
  final String? entity = jsonConvert.convert<String>(json['entity']);
  if (entity != null) {
    productListingEntity.entity = entity;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    productListingEntity.total = total;
  }
  final List<dynamic>? states = (json['states'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (states != null) {
    productListingEntity.states = states;
  }
  final String? sorting = jsonConvert.convert<String>(json['sorting']);
  if (sorting != null) {
    productListingEntity.sorting = sorting;
  }
  final ProductListingCurrentFilters? currentFilters = jsonConvert.convert<
      ProductListingCurrentFilters>(json['currentFilters']);
  if (currentFilters != null) {
    productListingEntity.currentFilters = currentFilters;
  }
  final List<
      ProductListingAvailableSortings>? availableSortings = (json['availableSortings'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ProductListingAvailableSortings>(
          e) as ProductListingAvailableSortings).toList();
  if (availableSortings != null) {
    productListingEntity.availableSortings = availableSortings;
  }
  final dynamic streamId = json['streamId'];
  if (streamId != null) {
    productListingEntity.streamId = streamId;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingEntity.apiAlias = apiAlias;
  }
  return productListingEntity;
}

Map<String, dynamic> $ProductListingEntityToJson(ProductListingEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['elements'] = entity.elements?.map((v) => v.toJson()).toList();
  data['aggregations'] = entity.aggregations?.toJson();
  data['page'] = entity.page;
  data['limit'] = entity.limit;
  data['entity'] = entity.entity;
  data['total'] = entity.total;
  data['states'] = entity.states;
  data['sorting'] = entity.sorting;
  data['currentFilters'] = entity.currentFilters?.toJson();
  data['availableSortings'] =
      entity.availableSortings?.map((v) => v.toJson()).toList();
  data['streamId'] = entity.streamId;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingEntityExtension on ProductListingEntity {
  ProductListingEntity copyWith({
    List<ProductListingElements>? elements,
    ProductListingAggregations? aggregations,
    int? page,
    int? limit,
    String? entity,
    int? total,
    List<dynamic>? states,
    String? sorting,
    ProductListingCurrentFilters? currentFilters,
    List<ProductListingAvailableSortings>? availableSortings,
    dynamic streamId,
    String? apiAlias,
  }) {
    return ProductListingEntity()
      ..elements = elements ?? this.elements
      ..aggregations = aggregations ?? this.aggregations
      ..page = page ?? this.page
      ..limit = limit ?? this.limit
      ..entity = entity ?? this.entity
      ..total = total ?? this.total
      ..states = states ?? this.states
      ..sorting = sorting ?? this.sorting
      ..currentFilters = currentFilters ?? this.currentFilters
      ..availableSortings = availableSortings ?? this.availableSortings
      ..streamId = streamId ?? this.streamId
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElements $ProductListingElementsFromJson(
    Map<String, dynamic> json) {
  final ProductListingElements productListingElements = ProductListingElements();
  final ProductListingElementsExtensions? extensions = jsonConvert.convert<
      ProductListingElementsExtensions>(json['extensions']);
  if (extensions != null) {
    productListingElements.extensions = extensions;
  }
  final String? versionId = jsonConvert.convert<String>(json['versionId']);
  if (versionId != null) {
    productListingElements.versionId = versionId;
  }
  final ProductListingElementsTranslated? translated = jsonConvert.convert<
      ProductListingElementsTranslated>(json['translated']);
  if (translated != null) {
    productListingElements.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingElements.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updatedAt']);
  if (updatedAt != null) {
    productListingElements.updatedAt = updatedAt;
  }
  final String? parentId = jsonConvert.convert<String>(json['parentId']);
  if (parentId != null) {
    productListingElements.parentId = parentId;
  }
  final int? childCount = jsonConvert.convert<int>(json['childCount']);
  if (childCount != null) {
    productListingElements.childCount = childCount;
  }
  final String? taxId = jsonConvert.convert<String>(json['taxId']);
  if (taxId != null) {
    productListingElements.taxId = taxId;
  }
  final String? manufacturerId = jsonConvert.convert<String>(
      json['manufacturerId']);
  if (manufacturerId != null) {
    productListingElements.manufacturerId = manufacturerId;
  }
  final dynamic unitId = json['unitId'];
  if (unitId != null) {
    productListingElements.unitId = unitId;
  }
  final bool? active = jsonConvert.convert<bool>(json['active']);
  if (active != null) {
    productListingElements.active = active;
  }
  final String? displayGroup = jsonConvert.convert<String>(
      json['displayGroup']);
  if (displayGroup != null) {
    productListingElements.displayGroup = displayGroup;
  }
  final dynamic manufacturerNumber = json['manufacturerNumber'];
  if (manufacturerNumber != null) {
    productListingElements.manufacturerNumber = manufacturerNumber;
  }
  final dynamic ean = json['ean'];
  if (ean != null) {
    productListingElements.ean = ean;
  }
  final int? sales = jsonConvert.convert<int>(json['sales']);
  if (sales != null) {
    productListingElements.sales = sales;
  }
  final String? productNumber = jsonConvert.convert<String>(
      json['productNumber']);
  if (productNumber != null) {
    productListingElements.productNumber = productNumber;
  }
  final int? stock = jsonConvert.convert<int>(json['stock']);
  if (stock != null) {
    productListingElements.stock = stock;
  }
  final int? availableStock = jsonConvert.convert<int>(json['availableStock']);
  if (availableStock != null) {
    productListingElements.availableStock = availableStock;
  }
  final bool? available = jsonConvert.convert<bool>(json['available']);
  if (available != null) {
    productListingElements.available = available;
  }
  final dynamic deliveryTimeId = json['deliveryTimeId'];
  if (deliveryTimeId != null) {
    productListingElements.deliveryTimeId = deliveryTimeId;
  }
  final dynamic deliveryTime = json['deliveryTime'];
  if (deliveryTime != null) {
    productListingElements.deliveryTime = deliveryTime;
  }
  final dynamic restockTime = json['restockTime'];
  if (restockTime != null) {
    productListingElements.restockTime = restockTime;
  }
  final bool? isCloseout = jsonConvert.convert<bool>(json['isCloseout']);
  if (isCloseout != null) {
    productListingElements.isCloseout = isCloseout;
  }
  final int? purchaseSteps = jsonConvert.convert<int>(json['purchaseSteps']);
  if (purchaseSteps != null) {
    productListingElements.purchaseSteps = purchaseSteps;
  }
  final dynamic maxPurchase = json['maxPurchase'];
  if (maxPurchase != null) {
    productListingElements.maxPurchase = maxPurchase;
  }
  final int? minPurchase = jsonConvert.convert<int>(json['minPurchase']);
  if (minPurchase != null) {
    productListingElements.minPurchase = minPurchase;
  }
  final int? purchaseUnit = jsonConvert.convert<int>(json['purchaseUnit']);
  if (purchaseUnit != null) {
    productListingElements.purchaseUnit = purchaseUnit;
  }
  final int? referenceUnit = jsonConvert.convert<int>(json['referenceUnit']);
  if (referenceUnit != null) {
    productListingElements.referenceUnit = referenceUnit;
  }
  final bool? shippingFree = jsonConvert.convert<bool>(json['shippingFree']);
  if (shippingFree != null) {
    productListingElements.shippingFree = shippingFree;
  }
  final bool? markAsTopseller = jsonConvert.convert<bool>(
      json['markAsTopseller']);
  if (markAsTopseller != null) {
    productListingElements.markAsTopseller = markAsTopseller;
  }
  final double? weight = jsonConvert.convert<double>(json['weight']);
  if (weight != null) {
    productListingElements.weight = weight;
  }
  final dynamic width = json['width'];
  if (width != null) {
    productListingElements.width = width;
  }
  final dynamic height = json['height'];
  if (height != null) {
    productListingElements.height = height;
  }
  final dynamic length = json['length'];
  if (length != null) {
    productListingElements.length = length;
  }
  final dynamic releaseDate = json['releaseDate'];
  if (releaseDate != null) {
    productListingElements.releaseDate = releaseDate;
  }
  final List<String>? categoryTree = (json['categoryTree'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (categoryTree != null) {
    productListingElements.categoryTree = categoryTree;
  }
  final dynamic streamIds = json['streamIds'];
  if (streamIds != null) {
    productListingElements.streamIds = streamIds;
  }
  final List<String>? optionIds = (json['optionIds'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (optionIds != null) {
    productListingElements.optionIds = optionIds;
  }
  final List<String>? propertyIds = (json['propertyIds'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (propertyIds != null) {
    productListingElements.propertyIds = propertyIds;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingElements.name = name;
  }
  final dynamic keywords = json['keywords'];
  if (keywords != null) {
    productListingElements.keywords = keywords;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    productListingElements.description = description;
  }
  final dynamic metaDescription = json['metaDescription'];
  if (metaDescription != null) {
    productListingElements.metaDescription = metaDescription;
  }
  final dynamic metaTitle = json['metaTitle'];
  if (metaTitle != null) {
    productListingElements.metaTitle = metaTitle;
  }
  final dynamic packUnit = json['packUnit'];
  if (packUnit != null) {
    productListingElements.packUnit = packUnit;
  }
  final dynamic packUnitPlural = json['packUnitPlural'];
  if (packUnitPlural != null) {
    productListingElements.packUnitPlural = packUnitPlural;
  }
  final ProductListingElementsTax? tax = jsonConvert.convert<
      ProductListingElementsTax>(json['tax']);
  if (tax != null) {
    productListingElements.tax = tax;
  }
  final ProductListingElementsManufacturer? manufacturer = jsonConvert.convert<
      ProductListingElementsManufacturer>(json['manufacturer']);
  if (manufacturer != null) {
    productListingElements.manufacturer = manufacturer;
  }
  final dynamic unit = json['unit'];
  if (unit != null) {
    productListingElements.unit = unit;
  }
  final ProductListingElementsCover? cover = jsonConvert.convert<
      ProductListingElementsCover>(json['cover']);
  if (cover != null) {
    productListingElements.cover = cover;
  }
  final dynamic parent = json['parent'];
  if (parent != null) {
    productListingElements.parent = parent;
  }
  final dynamic children = json['children'];
  if (children != null) {
    productListingElements.children = children;
  }
  final dynamic media = json['media'];
  if (media != null) {
    productListingElements.media = media;
  }
  final String? cmsPageId = jsonConvert.convert<String>(json['cmsPageId']);
  if (cmsPageId != null) {
    productListingElements.cmsPageId = cmsPageId;
  }
  final dynamic cmsPage = json['cmsPage'];
  if (cmsPage != null) {
    productListingElements.cmsPage = cmsPage;
  }
  final dynamic translations = json['translations'];
  if (translations != null) {
    productListingElements.translations = translations;
  }
  final dynamic categories = json['categories'];
  if (categories != null) {
    productListingElements.categories = categories;
  }
  final dynamic tags = json['tags'];
  if (tags != null) {
    productListingElements.tags = tags;
  }
  final dynamic properties = json['properties'];
  if (properties != null) {
    productListingElements.properties = properties;
  }
  final List<dynamic>? options = (json['options'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (options != null) {
    productListingElements.options = options;
  }
  final dynamic configuratorSettings = json['configuratorSettings'];
  if (configuratorSettings != null) {
    productListingElements.configuratorSettings = configuratorSettings;
  }
  final dynamic categoriesRo = json['categoriesRo'];
  if (categoriesRo != null) {
    productListingElements.categoriesRo = categoriesRo;
  }
  final String? coverId = jsonConvert.convert<String>(json['coverId']);
  if (coverId != null) {
    productListingElements.coverId = coverId;
  }
  final dynamic tagIds = json['tagIds'];
  if (tagIds != null) {
    productListingElements.tagIds = tagIds;
  }
  final List<String>? categoryIds = (json['categoryIds'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<String>(e) as String)
      .toList();
  if (categoryIds != null) {
    productListingElements.categoryIds = categoryIds;
  }
  final dynamic productReviews = json['productReviews'];
  if (productReviews != null) {
    productListingElements.productReviews = productReviews;
  }
  final dynamic ratingAverage = json['ratingAverage'];
  if (ratingAverage != null) {
    productListingElements.ratingAverage = ratingAverage;
  }
  final dynamic mainCategories = json['mainCategories'];
  if (mainCategories != null) {
    productListingElements.mainCategories = mainCategories;
  }
  final dynamic seoUrls = json['seoUrls'];
  if (seoUrls != null) {
    productListingElements.seoUrls = seoUrls;
  }
  final dynamic crossSellings = json['crossSellings'];
  if (crossSellings != null) {
    productListingElements.crossSellings = crossSellings;
  }
  final dynamic canonicalProductId = json['canonicalProductId'];
  if (canonicalProductId != null) {
    productListingElements.canonicalProductId = canonicalProductId;
  }
  final dynamic canonicalProduct = json['canonicalProduct'];
  if (canonicalProduct != null) {
    productListingElements.canonicalProduct = canonicalProduct;
  }
  final dynamic streams = json['streams'];
  if (streams != null) {
    productListingElements.streams = streams;
  }
  final dynamic downloads = json['downloads'];
  if (downloads != null) {
    productListingElements.downloads = downloads;
  }
  final List<String>? states = (json['states'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (states != null) {
    productListingElements.states = states;
  }
  final ProductListingElementsCustomFields? customFields = jsonConvert.convert<
      ProductListingElementsCustomFields>(json['customFields']);
  if (customFields != null) {
    productListingElements.customFields = customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingElements.id = id;
  }
  final List<dynamic>? calculatedPrices = (json['calculatedPrices'] as List<
      dynamic>?)?.map(
          (e) => e).toList();
  if (calculatedPrices != null) {
    productListingElements.calculatedPrices = calculatedPrices;
  }
  final ProductListingElementsCalculatedPrice? calculatedPrice = jsonConvert
      .convert<ProductListingElementsCalculatedPrice>(json['calculatedPrice']);
  if (calculatedPrice != null) {
    productListingElements.calculatedPrice = calculatedPrice;
  }
  final dynamic sortedProperties = json['sortedProperties'];
  if (sortedProperties != null) {
    productListingElements.sortedProperties = sortedProperties;
  }
  final ProductListingElementsCalculatedCheapestPrice? calculatedCheapestPrice = jsonConvert
      .convert<ProductListingElementsCalculatedCheapestPrice>(
      json['calculatedCheapestPrice']);
  if (calculatedCheapestPrice != null) {
    productListingElements.calculatedCheapestPrice = calculatedCheapestPrice;
  }
  final bool? isNew = jsonConvert.convert<bool>(json['isNew']);
  if (isNew != null) {
    productListingElements.isNew = isNew;
  }
  final int? calculatedMaxPurchase = jsonConvert.convert<int>(
      json['calculatedMaxPurchase']);
  if (calculatedMaxPurchase != null) {
    productListingElements.calculatedMaxPurchase = calculatedMaxPurchase;
  }
  final dynamic seoCategory = json['seoCategory'];
  if (seoCategory != null) {
    productListingElements.seoCategory = seoCategory;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElements.apiAlias = apiAlias;
  }
  return productListingElements;
}

Map<String, dynamic> $ProductListingElementsToJson(
    ProductListingElements entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['extensions'] = entity.extensions?.toJson();
  data['versionId'] = entity.versionId;
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['parentId'] = entity.parentId;
  data['childCount'] = entity.childCount;
  data['taxId'] = entity.taxId;
  data['manufacturerId'] = entity.manufacturerId;
  data['unitId'] = entity.unitId;
  data['active'] = entity.active;
  data['displayGroup'] = entity.displayGroup;
  data['manufacturerNumber'] = entity.manufacturerNumber;
  data['ean'] = entity.ean;
  data['sales'] = entity.sales;
  data['productNumber'] = entity.productNumber;
  data['stock'] = entity.stock;
  data['availableStock'] = entity.availableStock;
  data['available'] = entity.available;
  data['deliveryTimeId'] = entity.deliveryTimeId;
  data['deliveryTime'] = entity.deliveryTime;
  data['restockTime'] = entity.restockTime;
  data['isCloseout'] = entity.isCloseout;
  data['purchaseSteps'] = entity.purchaseSteps;
  data['maxPurchase'] = entity.maxPurchase;
  data['minPurchase'] = entity.minPurchase;
  data['purchaseUnit'] = entity.purchaseUnit;
  data['referenceUnit'] = entity.referenceUnit;
  data['shippingFree'] = entity.shippingFree;
  data['markAsTopseller'] = entity.markAsTopseller;
  data['weight'] = entity.weight;
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['length'] = entity.length;
  data['releaseDate'] = entity.releaseDate;
  data['categoryTree'] = entity.categoryTree;
  data['streamIds'] = entity.streamIds;
  data['optionIds'] = entity.optionIds;
  data['propertyIds'] = entity.propertyIds;
  data['name'] = entity.name;
  data['keywords'] = entity.keywords;
  data['description'] = entity.description;
  data['metaDescription'] = entity.metaDescription;
  data['metaTitle'] = entity.metaTitle;
  data['packUnit'] = entity.packUnit;
  data['packUnitPlural'] = entity.packUnitPlural;
  data['tax'] = entity.tax?.toJson();
  data['manufacturer'] = entity.manufacturer?.toJson();
  data['unit'] = entity.unit;
  data['cover'] = entity.cover?.toJson();
  data['parent'] = entity.parent;
  data['children'] = entity.children;
  data['media'] = entity.media;
  data['cmsPageId'] = entity.cmsPageId;
  data['cmsPage'] = entity.cmsPage;
  data['translations'] = entity.translations;
  data['categories'] = entity.categories;
  data['tags'] = entity.tags;
  data['properties'] = entity.properties;
  data['options'] = entity.options;
  data['configuratorSettings'] = entity.configuratorSettings;
  data['categoriesRo'] = entity.categoriesRo;
  data['coverId'] = entity.coverId;
  data['tagIds'] = entity.tagIds;
  data['categoryIds'] = entity.categoryIds;
  data['productReviews'] = entity.productReviews;
  data['ratingAverage'] = entity.ratingAverage;
  data['mainCategories'] = entity.mainCategories;
  data['seoUrls'] = entity.seoUrls;
  data['crossSellings'] = entity.crossSellings;
  data['canonicalProductId'] = entity.canonicalProductId;
  data['canonicalProduct'] = entity.canonicalProduct;
  data['streams'] = entity.streams;
  data['downloads'] = entity.downloads;
  data['states'] = entity.states;
  data['customFields'] = entity.customFields?.toJson();
  data['id'] = entity.id;
  data['calculatedPrices'] = entity.calculatedPrices;
  data['calculatedPrice'] = entity.calculatedPrice?.toJson();
  data['sortedProperties'] = entity.sortedProperties;
  data['calculatedCheapestPrice'] = entity.calculatedCheapestPrice?.toJson();
  data['isNew'] = entity.isNew;
  data['calculatedMaxPurchase'] = entity.calculatedMaxPurchase;
  data['seoCategory'] = entity.seoCategory;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsExtension on ProductListingElements {
  ProductListingElements copyWith({
    ProductListingElementsExtensions? extensions,
    String? versionId,
    ProductListingElementsTranslated? translated,
    String? createdAt,
    String? updatedAt,
    String? parentId,
    int? childCount,
    String? taxId,
    String? manufacturerId,
    dynamic unitId,
    bool? active,
    String? displayGroup,
    dynamic manufacturerNumber,
    dynamic ean,
    int? sales,
    String? productNumber,
    int? stock,
    int? availableStock,
    bool? available,
    dynamic deliveryTimeId,
    dynamic deliveryTime,
    dynamic restockTime,
    bool? isCloseout,
    int? purchaseSteps,
    dynamic maxPurchase,
    int? minPurchase,
    int? purchaseUnit,
    int? referenceUnit,
    bool? shippingFree,
    bool? markAsTopseller,
    double? weight,
    dynamic width,
    dynamic height,
    dynamic length,
    dynamic releaseDate,
    List<String>? categoryTree,
    dynamic streamIds,
    List<String>? optionIds,
    List<String>? propertyIds,
    String? name,
    dynamic keywords,
    String? description,
    dynamic metaDescription,
    dynamic metaTitle,
    dynamic packUnit,
    dynamic packUnitPlural,
    ProductListingElementsTax? tax,
    ProductListingElementsManufacturer? manufacturer,
    dynamic unit,
    ProductListingElementsCover? cover,
    dynamic parent,
    dynamic children,
    dynamic media,
    String? cmsPageId,
    dynamic cmsPage,
    dynamic translations,
    dynamic categories,
    dynamic tags,
    dynamic properties,
    List<dynamic>? options,
    dynamic configuratorSettings,
    dynamic categoriesRo,
    String? coverId,
    dynamic tagIds,
    List<String>? categoryIds,
    dynamic productReviews,
    dynamic ratingAverage,
    dynamic mainCategories,
    dynamic seoUrls,
    dynamic crossSellings,
    dynamic canonicalProductId,
    dynamic canonicalProduct,
    dynamic streams,
    dynamic downloads,
    List<String>? states,
    ProductListingElementsCustomFields? customFields,
    String? id,
    List<dynamic>? calculatedPrices,
    ProductListingElementsCalculatedPrice? calculatedPrice,
    dynamic sortedProperties,
    ProductListingElementsCalculatedCheapestPrice? calculatedCheapestPrice,
    bool? isNew,
    int? calculatedMaxPurchase,
    dynamic seoCategory,
    String? apiAlias,
  }) {
    return ProductListingElements()
      ..extensions = extensions ?? this.extensions
      ..versionId = versionId ?? this.versionId
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..parentId = parentId ?? this.parentId
      ..childCount = childCount ?? this.childCount
      ..taxId = taxId ?? this.taxId
      ..manufacturerId = manufacturerId ?? this.manufacturerId
      ..unitId = unitId ?? this.unitId
      ..active = active ?? this.active
      ..displayGroup = displayGroup ?? this.displayGroup
      ..manufacturerNumber = manufacturerNumber ?? this.manufacturerNumber
      ..ean = ean ?? this.ean
      ..sales = sales ?? this.sales
      ..productNumber = productNumber ?? this.productNumber
      ..stock = stock ?? this.stock
      ..availableStock = availableStock ?? this.availableStock
      ..available = available ?? this.available
      ..deliveryTimeId = deliveryTimeId ?? this.deliveryTimeId
      ..deliveryTime = deliveryTime ?? this.deliveryTime
      ..restockTime = restockTime ?? this.restockTime
      ..isCloseout = isCloseout ?? this.isCloseout
      ..purchaseSteps = purchaseSteps ?? this.purchaseSteps
      ..maxPurchase = maxPurchase ?? this.maxPurchase
      ..minPurchase = minPurchase ?? this.minPurchase
      ..purchaseUnit = purchaseUnit ?? this.purchaseUnit
      ..referenceUnit = referenceUnit ?? this.referenceUnit
      ..shippingFree = shippingFree ?? this.shippingFree
      ..markAsTopseller = markAsTopseller ?? this.markAsTopseller
      ..weight = weight ?? this.weight
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..length = length ?? this.length
      ..releaseDate = releaseDate ?? this.releaseDate
      ..categoryTree = categoryTree ?? this.categoryTree
      ..streamIds = streamIds ?? this.streamIds
      ..optionIds = optionIds ?? this.optionIds
      ..propertyIds = propertyIds ?? this.propertyIds
      ..name = name ?? this.name
      ..keywords = keywords ?? this.keywords
      ..description = description ?? this.description
      ..metaDescription = metaDescription ?? this.metaDescription
      ..metaTitle = metaTitle ?? this.metaTitle
      ..packUnit = packUnit ?? this.packUnit
      ..packUnitPlural = packUnitPlural ?? this.packUnitPlural
      ..tax = tax ?? this.tax
      ..manufacturer = manufacturer ?? this.manufacturer
      ..unit = unit ?? this.unit
      ..cover = cover ?? this.cover
      ..parent = parent ?? this.parent
      ..children = children ?? this.children
      ..media = media ?? this.media
      ..cmsPageId = cmsPageId ?? this.cmsPageId
      ..cmsPage = cmsPage ?? this.cmsPage
      ..translations = translations ?? this.translations
      ..categories = categories ?? this.categories
      ..tags = tags ?? this.tags
      ..properties = properties ?? this.properties
      ..options = options ?? this.options
      ..configuratorSettings = configuratorSettings ?? this.configuratorSettings
      ..categoriesRo = categoriesRo ?? this.categoriesRo
      ..coverId = coverId ?? this.coverId
      ..tagIds = tagIds ?? this.tagIds
      ..categoryIds = categoryIds ?? this.categoryIds
      ..productReviews = productReviews ?? this.productReviews
      ..ratingAverage = ratingAverage ?? this.ratingAverage
      ..mainCategories = mainCategories ?? this.mainCategories
      ..seoUrls = seoUrls ?? this.seoUrls
      ..crossSellings = crossSellings ?? this.crossSellings
      ..canonicalProductId = canonicalProductId ?? this.canonicalProductId
      ..canonicalProduct = canonicalProduct ?? this.canonicalProduct
      ..streams = streams ?? this.streams
      ..downloads = downloads ?? this.downloads
      ..states = states ?? this.states
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..calculatedPrices = calculatedPrices ?? this.calculatedPrices
      ..calculatedPrice = calculatedPrice ?? this.calculatedPrice
      ..sortedProperties = sortedProperties ?? this.sortedProperties
      ..calculatedCheapestPrice = calculatedCheapestPrice ??
          this.calculatedCheapestPrice
      ..isNew = isNew ?? this.isNew
      ..calculatedMaxPurchase = calculatedMaxPurchase ??
          this.calculatedMaxPurchase
      ..seoCategory = seoCategory ?? this.seoCategory
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsExtensions $ProductListingElementsExtensionsFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsExtensions productListingElementsExtensions = ProductListingElementsExtensions();
  final ProductListingElementsExtensionsSearch? search = jsonConvert.convert<
      ProductListingElementsExtensionsSearch>(json['search']);
  if (search != null) {
    productListingElementsExtensions.search = search;
  }
  return productListingElementsExtensions;
}

Map<String, dynamic> $ProductListingElementsExtensionsToJson(
    ProductListingElementsExtensions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['search'] = entity.search?.toJson();
  return data;
}

extension ProductListingElementsExtensionsExtension on ProductListingElementsExtensions {
  ProductListingElementsExtensions copyWith({
    ProductListingElementsExtensionsSearch? search,
  }) {
    return ProductListingElementsExtensions()
      ..search = search ?? this.search;
  }
}

ProductListingElementsExtensionsSearch $ProductListingElementsExtensionsSearchFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsExtensionsSearch productListingElementsExtensionsSearch = ProductListingElementsExtensionsSearch();
  final List<dynamic>? extensions = (json['extensions'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (extensions != null) {
    productListingElementsExtensionsSearch.extensions = extensions;
  }
  final dynamic uniqueidentifier = json['_uniqueIdentifier'];
  if (uniqueidentifier != null) {
    productListingElementsExtensionsSearch.uniqueidentifier = uniqueidentifier;
  }
  final List<dynamic>? translated = (json['translated'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (translated != null) {
    productListingElementsExtensionsSearch.translated = translated;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingElementsExtensionsSearch.id = id;
  }
  final String? productNumber = jsonConvert.convert<String>(
      json['productNumber']);
  if (productNumber != null) {
    productListingElementsExtensionsSearch.productNumber = productNumber;
  }
  final int? autoIncrement = jsonConvert.convert<int>(json['autoIncrement']);
  if (autoIncrement != null) {
    productListingElementsExtensionsSearch.autoIncrement = autoIncrement;
  }
  return productListingElementsExtensionsSearch;
}

Map<String, dynamic> $ProductListingElementsExtensionsSearchToJson(
    ProductListingElementsExtensionsSearch entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['extensions'] = entity.extensions;
  data['_uniqueIdentifier'] = entity.uniqueidentifier;
  data['translated'] = entity.translated;
  data['id'] = entity.id;
  data['productNumber'] = entity.productNumber;
  data['autoIncrement'] = entity.autoIncrement;
  return data;
}

extension ProductListingElementsExtensionsSearchExtension on ProductListingElementsExtensionsSearch {
  ProductListingElementsExtensionsSearch copyWith({
    List<dynamic>? extensions,
    dynamic uniqueidentifier,
    List<dynamic>? translated,
    String? id,
    String? productNumber,
    int? autoIncrement,
  }) {
    return ProductListingElementsExtensionsSearch()
      ..extensions = extensions ?? this.extensions
      ..uniqueidentifier = uniqueidentifier ?? this.uniqueidentifier
      ..translated = translated ?? this.translated
      ..id = id ?? this.id
      ..productNumber = productNumber ?? this.productNumber
      ..autoIncrement = autoIncrement ?? this.autoIncrement;
  }
}

ProductListingElementsTranslated $ProductListingElementsTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsTranslated productListingElementsTranslated = ProductListingElementsTranslated();
  final dynamic metaDescription = json['metaDescription'];
  if (metaDescription != null) {
    productListingElementsTranslated.metaDescription = metaDescription;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingElementsTranslated.name = name;
  }
  final dynamic keywords = json['keywords'];
  if (keywords != null) {
    productListingElementsTranslated.keywords = keywords;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    productListingElementsTranslated.description = description;
  }
  final dynamic metaTitle = json['metaTitle'];
  if (metaTitle != null) {
    productListingElementsTranslated.metaTitle = metaTitle;
  }
  final dynamic packUnit = json['packUnit'];
  if (packUnit != null) {
    productListingElementsTranslated.packUnit = packUnit;
  }
  final dynamic packUnitPlural = json['packUnitPlural'];
  if (packUnitPlural != null) {
    productListingElementsTranslated.packUnitPlural = packUnitPlural;
  }
  final ProductListingElementsTranslatedCustomFields? customFields = jsonConvert
      .convert<ProductListingElementsTranslatedCustomFields>(
      json['customFields']);
  if (customFields != null) {
    productListingElementsTranslated.customFields = customFields;
  }
  return productListingElementsTranslated;
}

Map<String, dynamic> $ProductListingElementsTranslatedToJson(
    ProductListingElementsTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['metaDescription'] = entity.metaDescription;
  data['name'] = entity.name;
  data['keywords'] = entity.keywords;
  data['description'] = entity.description;
  data['metaTitle'] = entity.metaTitle;
  data['packUnit'] = entity.packUnit;
  data['packUnitPlural'] = entity.packUnitPlural;
  data['customFields'] = entity.customFields?.toJson();
  return data;
}

extension ProductListingElementsTranslatedExtension on ProductListingElementsTranslated {
  ProductListingElementsTranslated copyWith({
    dynamic metaDescription,
    String? name,
    dynamic keywords,
    String? description,
    dynamic metaTitle,
    dynamic packUnit,
    dynamic packUnitPlural,
    ProductListingElementsTranslatedCustomFields? customFields,
  }) {
    return ProductListingElementsTranslated()
      ..metaDescription = metaDescription ?? this.metaDescription
      ..name = name ?? this.name
      ..keywords = keywords ?? this.keywords
      ..description = description ?? this.description
      ..metaTitle = metaTitle ?? this.metaTitle
      ..packUnit = packUnit ?? this.packUnit
      ..packUnitPlural = packUnitPlural ?? this.packUnitPlural
      ..customFields = customFields ?? this.customFields;
  }
}

ProductListingElementsTranslatedCustomFields $ProductListingElementsTranslatedCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsTranslatedCustomFields productListingElementsTranslatedCustomFields = ProductListingElementsTranslatedCustomFields();
  final String? ngsImageRotationMedia = jsonConvert.convert<String>(
      json['ngs_image_rotation_media']);
  if (ngsImageRotationMedia != null) {
    productListingElementsTranslatedCustomFields.ngsImageRotationMedia =
        ngsImageRotationMedia;
  }
  final bool? mediaclipIsProductCustomizable = jsonConvert.convert<bool>(
      json['mediaclip_is_product_customizable']);
  if (mediaclipIsProductCustomizable != null) {
    productListingElementsTranslatedCustomFields
        .mediaclipIsProductCustomizable = mediaclipIsProductCustomizable;
  }
  final String? mediaclipProductModule = jsonConvert.convert<String>(
      json['mediaclip_product_module']);
  if (mediaclipProductModule != null) {
    productListingElementsTranslatedCustomFields.mediaclipProductModule =
        mediaclipProductModule;
  }
  final String? mediaclipProductId = jsonConvert.convert<String>(
      json['mediaclip_product_id']);
  if (mediaclipProductId != null) {
    productListingElementsTranslatedCustomFields.mediaclipProductId =
        mediaclipProductId;
  }
  return productListingElementsTranslatedCustomFields;
}

Map<String, dynamic> $ProductListingElementsTranslatedCustomFieldsToJson(
    ProductListingElementsTranslatedCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ngs_image_rotation_media'] = entity.ngsImageRotationMedia;
  data['mediaclip_is_product_customizable'] =
      entity.mediaclipIsProductCustomizable;
  data['mediaclip_product_module'] = entity.mediaclipProductModule;
  data['mediaclip_product_id'] = entity.mediaclipProductId;
  return data;
}

extension ProductListingElementsTranslatedCustomFieldsExtension on ProductListingElementsTranslatedCustomFields {
  ProductListingElementsTranslatedCustomFields copyWith({
    String? ngsImageRotationMedia,
    bool? mediaclipIsProductCustomizable,
    String? mediaclipProductModule,
    String? mediaclipProductId,
  }) {
    return ProductListingElementsTranslatedCustomFields()
      ..ngsImageRotationMedia = ngsImageRotationMedia ??
          this.ngsImageRotationMedia
      ..mediaclipIsProductCustomizable = mediaclipIsProductCustomizable ??
          this.mediaclipIsProductCustomizable
      ..mediaclipProductModule = mediaclipProductModule ??
          this.mediaclipProductModule
      ..mediaclipProductId = mediaclipProductId ?? this.mediaclipProductId;
  }
}

ProductListingElementsTax $ProductListingElementsTaxFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsTax productListingElementsTax = ProductListingElementsTax();
  final List<dynamic>? translated = (json['translated'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (translated != null) {
    productListingElementsTax.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingElementsTax.createdAt = createdAt;
  }
  final dynamic updatedAt = json['updatedAt'];
  if (updatedAt != null) {
    productListingElementsTax.updatedAt = updatedAt;
  }
  final int? taxRate = jsonConvert.convert<int>(json['taxRate']);
  if (taxRate != null) {
    productListingElementsTax.taxRate = taxRate;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingElementsTax.name = name;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingElementsTax.position = position;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingElementsTax.customFields = customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingElementsTax.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsTax.apiAlias = apiAlias;
  }
  return productListingElementsTax;
}

Map<String, dynamic> $ProductListingElementsTaxToJson(
    ProductListingElementsTax entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['translated'] = entity.translated;
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['taxRate'] = entity.taxRate;
  data['name'] = entity.name;
  data['position'] = entity.position;
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsTaxExtension on ProductListingElementsTax {
  ProductListingElementsTax copyWith({
    List<dynamic>? translated,
    String? createdAt,
    dynamic updatedAt,
    int? taxRate,
    String? name,
    int? position,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingElementsTax()
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..taxRate = taxRate ?? this.taxRate
      ..name = name ?? this.name
      ..position = position ?? this.position
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsManufacturer $ProductListingElementsManufacturerFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsManufacturer productListingElementsManufacturer = ProductListingElementsManufacturer();
  final String? versionId = jsonConvert.convert<String>(json['versionId']);
  if (versionId != null) {
    productListingElementsManufacturer.versionId = versionId;
  }
  final ProductListingElementsManufacturerTranslated? translated = jsonConvert
      .convert<ProductListingElementsManufacturerTranslated>(
      json['translated']);
  if (translated != null) {
    productListingElementsManufacturer.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingElementsManufacturer.createdAt = createdAt;
  }
  final dynamic updatedAt = json['updatedAt'];
  if (updatedAt != null) {
    productListingElementsManufacturer.updatedAt = updatedAt;
  }
  final dynamic mediaId = json['mediaId'];
  if (mediaId != null) {
    productListingElementsManufacturer.mediaId = mediaId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingElementsManufacturer.name = name;
  }
  final dynamic link = json['link'];
  if (link != null) {
    productListingElementsManufacturer.link = link;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingElementsManufacturer.description = description;
  }
  final dynamic media = json['media'];
  if (media != null) {
    productListingElementsManufacturer.media = media;
  }
  final dynamic translations = json['translations'];
  if (translations != null) {
    productListingElementsManufacturer.translations = translations;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingElementsManufacturer.customFields = customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingElementsManufacturer.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsManufacturer.apiAlias = apiAlias;
  }
  return productListingElementsManufacturer;
}

Map<String, dynamic> $ProductListingElementsManufacturerToJson(
    ProductListingElementsManufacturer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['versionId'] = entity.versionId;
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['mediaId'] = entity.mediaId;
  data['name'] = entity.name;
  data['link'] = entity.link;
  data['description'] = entity.description;
  data['media'] = entity.media;
  data['translations'] = entity.translations;
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsManufacturerExtension on ProductListingElementsManufacturer {
  ProductListingElementsManufacturer copyWith({
    String? versionId,
    ProductListingElementsManufacturerTranslated? translated,
    String? createdAt,
    dynamic updatedAt,
    dynamic mediaId,
    String? name,
    dynamic link,
    dynamic description,
    dynamic media,
    dynamic translations,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingElementsManufacturer()
      ..versionId = versionId ?? this.versionId
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..mediaId = mediaId ?? this.mediaId
      ..name = name ?? this.name
      ..link = link ?? this.link
      ..description = description ?? this.description
      ..media = media ?? this.media
      ..translations = translations ?? this.translations
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsManufacturerTranslated $ProductListingElementsManufacturerTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsManufacturerTranslated productListingElementsManufacturerTranslated = ProductListingElementsManufacturerTranslated();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingElementsManufacturerTranslated.name = name;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingElementsManufacturerTranslated.description = description;
  }
  final ProductListingElementsManufacturerTranslatedCustomFields? customFields = jsonConvert
      .convert<ProductListingElementsManufacturerTranslatedCustomFields>(
      json['customFields']);
  if (customFields != null) {
    productListingElementsManufacturerTranslated.customFields = customFields;
  }
  return productListingElementsManufacturerTranslated;
}

Map<String, dynamic> $ProductListingElementsManufacturerTranslatedToJson(
    ProductListingElementsManufacturerTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['description'] = entity.description;
  data['customFields'] = entity.customFields?.toJson();
  return data;
}

extension ProductListingElementsManufacturerTranslatedExtension on ProductListingElementsManufacturerTranslated {
  ProductListingElementsManufacturerTranslated copyWith({
    String? name,
    dynamic description,
    ProductListingElementsManufacturerTranslatedCustomFields? customFields,
  }) {
    return ProductListingElementsManufacturerTranslated()
      ..name = name ?? this.name
      ..description = description ?? this.description
      ..customFields = customFields ?? this.customFields;
  }
}

ProductListingElementsManufacturerTranslatedCustomFields $ProductListingElementsManufacturerTranslatedCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsManufacturerTranslatedCustomFields productListingElementsManufacturerTranslatedCustomFields = ProductListingElementsManufacturerTranslatedCustomFields();
  return productListingElementsManufacturerTranslatedCustomFields;
}

Map<String,
    dynamic> $ProductListingElementsManufacturerTranslatedCustomFieldsToJson(
    ProductListingElementsManufacturerTranslatedCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension ProductListingElementsManufacturerTranslatedCustomFieldsExtension on ProductListingElementsManufacturerTranslatedCustomFields {
}

ProductListingElementsCover $ProductListingElementsCoverFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCover productListingElementsCover = ProductListingElementsCover();
  final String? versionId = jsonConvert.convert<String>(json['versionId']);
  if (versionId != null) {
    productListingElementsCover.versionId = versionId;
  }
  final List<dynamic>? translated = (json['translated'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (translated != null) {
    productListingElementsCover.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingElementsCover.createdAt = createdAt;
  }
  final dynamic updatedAt = json['updatedAt'];
  if (updatedAt != null) {
    productListingElementsCover.updatedAt = updatedAt;
  }
  final String? productId = jsonConvert.convert<String>(json['productId']);
  if (productId != null) {
    productListingElementsCover.productId = productId;
  }
  final String? mediaId = jsonConvert.convert<String>(json['mediaId']);
  if (mediaId != null) {
    productListingElementsCover.mediaId = mediaId;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingElementsCover.position = position;
  }
  final ProductListingElementsCoverMedia? media = jsonConvert.convert<
      ProductListingElementsCoverMedia>(json['media']);
  if (media != null) {
    productListingElementsCover.media = media;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingElementsCover.customFields = customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingElementsCover.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCover.apiAlias = apiAlias;
  }
  return productListingElementsCover;
}

Map<String, dynamic> $ProductListingElementsCoverToJson(
    ProductListingElementsCover entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['versionId'] = entity.versionId;
  data['translated'] = entity.translated;
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['productId'] = entity.productId;
  data['mediaId'] = entity.mediaId;
  data['position'] = entity.position;
  data['media'] = entity.media?.toJson();
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCoverExtension on ProductListingElementsCover {
  ProductListingElementsCover copyWith({
    String? versionId,
    List<dynamic>? translated,
    String? createdAt,
    dynamic updatedAt,
    String? productId,
    String? mediaId,
    int? position,
    ProductListingElementsCoverMedia? media,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingElementsCover()
      ..versionId = versionId ?? this.versionId
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..productId = productId ?? this.productId
      ..mediaId = mediaId ?? this.mediaId
      ..position = position ?? this.position
      ..media = media ?? this.media
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsCoverMedia $ProductListingElementsCoverMediaFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCoverMedia productListingElementsCoverMedia = ProductListingElementsCoverMedia();
  final ProductListingElementsCoverMediaTranslated? translated = jsonConvert
      .convert<ProductListingElementsCoverMediaTranslated>(json['translated']);
  if (translated != null) {
    productListingElementsCoverMedia.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingElementsCoverMedia.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updatedAt']);
  if (updatedAt != null) {
    productListingElementsCoverMedia.updatedAt = updatedAt;
  }
  final String? mimeType = jsonConvert.convert<String>(json['mimeType']);
  if (mimeType != null) {
    productListingElementsCoverMedia.mimeType = mimeType;
  }
  final String? fileExtension = jsonConvert.convert<String>(
      json['fileExtension']);
  if (fileExtension != null) {
    productListingElementsCoverMedia.fileExtension = fileExtension;
  }
  final int? fileSize = jsonConvert.convert<int>(json['fileSize']);
  if (fileSize != null) {
    productListingElementsCoverMedia.fileSize = fileSize;
  }
  final dynamic title = json['title'];
  if (title != null) {
    productListingElementsCoverMedia.title = title;
  }
  final dynamic metaData = json['metaData'];
  if (metaData != null) {
    productListingElementsCoverMedia.metaData = metaData;
  }
  final String? uploadedAt = jsonConvert.convert<String>(json['uploadedAt']);
  if (uploadedAt != null) {
    productListingElementsCoverMedia.uploadedAt = uploadedAt;
  }
  final dynamic alt = json['alt'];
  if (alt != null) {
    productListingElementsCoverMedia.alt = alt;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    productListingElementsCoverMedia.url = url;
  }
  final String? fileName = jsonConvert.convert<String>(json['fileName']);
  if (fileName != null) {
    productListingElementsCoverMedia.fileName = fileName;
  }
  final dynamic translations = json['translations'];
  if (translations != null) {
    productListingElementsCoverMedia.translations = translations;
  }
  final List<dynamic>? thumbnails = (json['thumbnails'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (thumbnails != null) {
    productListingElementsCoverMedia.thumbnails = thumbnails;
  }
  final bool? hasFile = jsonConvert.convert<bool>(json['hasFile']);
  if (hasFile != null) {
    productListingElementsCoverMedia.hasFile = hasFile;
  }
  final bool? private = jsonConvert.convert<bool>(json['private']);
  if (private != null) {
    productListingElementsCoverMedia.private = private;
  }
  final String? path = jsonConvert.convert<String>(json['path']);
  if (path != null) {
    productListingElementsCoverMedia.path = path;
  }
  final dynamic config = json['config'];
  if (config != null) {
    productListingElementsCoverMedia.config = config;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingElementsCoverMedia.customFields = customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingElementsCoverMedia.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCoverMedia.apiAlias = apiAlias;
  }
  return productListingElementsCoverMedia;
}

Map<String, dynamic> $ProductListingElementsCoverMediaToJson(
    ProductListingElementsCoverMedia entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['mimeType'] = entity.mimeType;
  data['fileExtension'] = entity.fileExtension;
  data['fileSize'] = entity.fileSize;
  data['title'] = entity.title;
  data['metaData'] = entity.metaData;
  data['uploadedAt'] = entity.uploadedAt;
  data['alt'] = entity.alt;
  data['url'] = entity.url;
  data['fileName'] = entity.fileName;
  data['translations'] = entity.translations;
  data['thumbnails'] = entity.thumbnails;
  data['hasFile'] = entity.hasFile;
  data['private'] = entity.private;
  data['path'] = entity.path;
  data['config'] = entity.config;
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCoverMediaExtension on ProductListingElementsCoverMedia {
  ProductListingElementsCoverMedia copyWith({
    ProductListingElementsCoverMediaTranslated? translated,
    String? createdAt,
    String? updatedAt,
    String? mimeType,
    String? fileExtension,
    int? fileSize,
    dynamic title,
    dynamic metaData,
    String? uploadedAt,
    dynamic alt,
    String? url,
    String? fileName,
    dynamic translations,
    List<dynamic>? thumbnails,
    bool? hasFile,
    bool? private,
    String? path,
    dynamic config,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingElementsCoverMedia()
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..mimeType = mimeType ?? this.mimeType
      ..fileExtension = fileExtension ?? this.fileExtension
      ..fileSize = fileSize ?? this.fileSize
      ..title = title ?? this.title
      ..metaData = metaData ?? this.metaData
      ..uploadedAt = uploadedAt ?? this.uploadedAt
      ..alt = alt ?? this.alt
      ..url = url ?? this.url
      ..fileName = fileName ?? this.fileName
      ..translations = translations ?? this.translations
      ..thumbnails = thumbnails ?? this.thumbnails
      ..hasFile = hasFile ?? this.hasFile
      ..private = private ?? this.private
      ..path = path ?? this.path
      ..config = config ?? this.config
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsCoverMediaTranslated $ProductListingElementsCoverMediaTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCoverMediaTranslated productListingElementsCoverMediaTranslated = ProductListingElementsCoverMediaTranslated();
  final dynamic alt = json['alt'];
  if (alt != null) {
    productListingElementsCoverMediaTranslated.alt = alt;
  }
  final dynamic title = json['title'];
  if (title != null) {
    productListingElementsCoverMediaTranslated.title = title;
  }
  final ProductListingElementsCoverMediaTranslatedCustomFields? customFields = jsonConvert
      .convert<ProductListingElementsCoverMediaTranslatedCustomFields>(
      json['customFields']);
  if (customFields != null) {
    productListingElementsCoverMediaTranslated.customFields = customFields;
  }
  return productListingElementsCoverMediaTranslated;
}

Map<String, dynamic> $ProductListingElementsCoverMediaTranslatedToJson(
    ProductListingElementsCoverMediaTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['alt'] = entity.alt;
  data['title'] = entity.title;
  data['customFields'] = entity.customFields?.toJson();
  return data;
}

extension ProductListingElementsCoverMediaTranslatedExtension on ProductListingElementsCoverMediaTranslated {
  ProductListingElementsCoverMediaTranslated copyWith({
    dynamic alt,
    dynamic title,
    ProductListingElementsCoverMediaTranslatedCustomFields? customFields,
  }) {
    return ProductListingElementsCoverMediaTranslated()
      ..alt = alt ?? this.alt
      ..title = title ?? this.title
      ..customFields = customFields ?? this.customFields;
  }
}

ProductListingElementsCoverMediaTranslatedCustomFields $ProductListingElementsCoverMediaTranslatedCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCoverMediaTranslatedCustomFields productListingElementsCoverMediaTranslatedCustomFields = ProductListingElementsCoverMediaTranslatedCustomFields();
  return productListingElementsCoverMediaTranslatedCustomFields;
}

Map<String,
    dynamic> $ProductListingElementsCoverMediaTranslatedCustomFieldsToJson(
    ProductListingElementsCoverMediaTranslatedCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension ProductListingElementsCoverMediaTranslatedCustomFieldsExtension on ProductListingElementsCoverMediaTranslatedCustomFields {
}

ProductListingElementsCustomFields $ProductListingElementsCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCustomFields productListingElementsCustomFields = ProductListingElementsCustomFields();
  final String? ngsImageRotationMedia = jsonConvert.convert<String>(
      json['ngs_image_rotation_media']);
  if (ngsImageRotationMedia != null) {
    productListingElementsCustomFields.ngsImageRotationMedia =
        ngsImageRotationMedia;
  }
  final bool? mediaclipIsProductCustomizable = jsonConvert.convert<bool>(
      json['mediaclip_is_product_customizable']);
  if (mediaclipIsProductCustomizable != null) {
    productListingElementsCustomFields.mediaclipIsProductCustomizable =
        mediaclipIsProductCustomizable;
  }
  final String? mediaclipProductModule = jsonConvert.convert<String>(
      json['mediaclip_product_module']);
  if (mediaclipProductModule != null) {
    productListingElementsCustomFields.mediaclipProductModule =
        mediaclipProductModule;
  }
  final String? mediaclipProductId = jsonConvert.convert<String>(
      json['mediaclip_product_id']);
  if (mediaclipProductId != null) {
    productListingElementsCustomFields.mediaclipProductId = mediaclipProductId;
  }
  return productListingElementsCustomFields;
}

Map<String, dynamic> $ProductListingElementsCustomFieldsToJson(
    ProductListingElementsCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ngs_image_rotation_media'] = entity.ngsImageRotationMedia;
  data['mediaclip_is_product_customizable'] =
      entity.mediaclipIsProductCustomizable;
  data['mediaclip_product_module'] = entity.mediaclipProductModule;
  data['mediaclip_product_id'] = entity.mediaclipProductId;
  return data;
}

extension ProductListingElementsCustomFieldsExtension on ProductListingElementsCustomFields {
  ProductListingElementsCustomFields copyWith({
    String? ngsImageRotationMedia,
    bool? mediaclipIsProductCustomizable,
    String? mediaclipProductModule,
    String? mediaclipProductId,
  }) {
    return ProductListingElementsCustomFields()
      ..ngsImageRotationMedia = ngsImageRotationMedia ??
          this.ngsImageRotationMedia
      ..mediaclipIsProductCustomizable = mediaclipIsProductCustomizable ??
          this.mediaclipIsProductCustomizable
      ..mediaclipProductModule = mediaclipProductModule ??
          this.mediaclipProductModule
      ..mediaclipProductId = mediaclipProductId ?? this.mediaclipProductId;
  }
}

ProductListingElementsCalculatedPrice $ProductListingElementsCalculatedPriceFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCalculatedPrice productListingElementsCalculatedPrice = ProductListingElementsCalculatedPrice();
  final double? unitPrice = jsonConvert.convert<double>(json['unitPrice']);
  if (unitPrice != null) {
    productListingElementsCalculatedPrice.unitPrice = unitPrice;
  }
  final int? quantity = jsonConvert.convert<int>(json['quantity']);
  if (quantity != null) {
    productListingElementsCalculatedPrice.quantity = quantity;
  }
  final double? totalPrice = jsonConvert.convert<double>(json['totalPrice']);
  if (totalPrice != null) {
    productListingElementsCalculatedPrice.totalPrice = totalPrice;
  }
  final List<
      ProductListingElementsCalculatedPriceCalculatedTaxes>? calculatedTaxes = (json['calculatedTaxes'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          ProductListingElementsCalculatedPriceCalculatedTaxes>(
          e) as ProductListingElementsCalculatedPriceCalculatedTaxes).toList();
  if (calculatedTaxes != null) {
    productListingElementsCalculatedPrice.calculatedTaxes = calculatedTaxes;
  }
  final List<
      ProductListingElementsCalculatedPriceTaxRules>? taxRules = (json['taxRules'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          ProductListingElementsCalculatedPriceTaxRules>(
          e) as ProductListingElementsCalculatedPriceTaxRules).toList();
  if (taxRules != null) {
    productListingElementsCalculatedPrice.taxRules = taxRules;
  }
  final dynamic referencePrice = json['referencePrice'];
  if (referencePrice != null) {
    productListingElementsCalculatedPrice.referencePrice = referencePrice;
  }
  final dynamic listPrice = json['listPrice'];
  if (listPrice != null) {
    productListingElementsCalculatedPrice.listPrice = listPrice;
  }
  final dynamic regulationPrice = json['regulationPrice'];
  if (regulationPrice != null) {
    productListingElementsCalculatedPrice.regulationPrice = regulationPrice;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCalculatedPrice.apiAlias = apiAlias;
  }
  return productListingElementsCalculatedPrice;
}

Map<String, dynamic> $ProductListingElementsCalculatedPriceToJson(
    ProductListingElementsCalculatedPrice entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['unitPrice'] = entity.unitPrice;
  data['quantity'] = entity.quantity;
  data['totalPrice'] = entity.totalPrice;
  data['calculatedTaxes'] =
      entity.calculatedTaxes?.map((v) => v.toJson()).toList();
  data['taxRules'] = entity.taxRules?.map((v) => v.toJson()).toList();
  data['referencePrice'] = entity.referencePrice;
  data['listPrice'] = entity.listPrice;
  data['regulationPrice'] = entity.regulationPrice;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCalculatedPriceExtension on ProductListingElementsCalculatedPrice {
  ProductListingElementsCalculatedPrice copyWith({
    double? unitPrice,
    int? quantity,
    double? totalPrice,
    List<ProductListingElementsCalculatedPriceCalculatedTaxes>? calculatedTaxes,
    List<ProductListingElementsCalculatedPriceTaxRules>? taxRules,
    dynamic referencePrice,
    dynamic listPrice,
    dynamic regulationPrice,
    String? apiAlias,
  }) {
    return ProductListingElementsCalculatedPrice()
      ..unitPrice = unitPrice ?? this.unitPrice
      ..quantity = quantity ?? this.quantity
      ..totalPrice = totalPrice ?? this.totalPrice
      ..calculatedTaxes = calculatedTaxes ?? this.calculatedTaxes
      ..taxRules = taxRules ?? this.taxRules
      ..referencePrice = referencePrice ?? this.referencePrice
      ..listPrice = listPrice ?? this.listPrice
      ..regulationPrice = regulationPrice ?? this.regulationPrice
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsCalculatedPriceCalculatedTaxes $ProductListingElementsCalculatedPriceCalculatedTaxesFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCalculatedPriceCalculatedTaxes productListingElementsCalculatedPriceCalculatedTaxes = ProductListingElementsCalculatedPriceCalculatedTaxes();
  final double? tax = jsonConvert.convert<double>(json['tax']);
  if (tax != null) {
    productListingElementsCalculatedPriceCalculatedTaxes.tax = tax;
  }
  final int? taxRate = jsonConvert.convert<int>(json['taxRate']);
  if (taxRate != null) {
    productListingElementsCalculatedPriceCalculatedTaxes.taxRate = taxRate;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    productListingElementsCalculatedPriceCalculatedTaxes.price = price;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCalculatedPriceCalculatedTaxes.apiAlias = apiAlias;
  }
  return productListingElementsCalculatedPriceCalculatedTaxes;
}

Map<String,
    dynamic> $ProductListingElementsCalculatedPriceCalculatedTaxesToJson(
    ProductListingElementsCalculatedPriceCalculatedTaxes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tax'] = entity.tax;
  data['taxRate'] = entity.taxRate;
  data['price'] = entity.price;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCalculatedPriceCalculatedTaxesExtension on ProductListingElementsCalculatedPriceCalculatedTaxes {
  ProductListingElementsCalculatedPriceCalculatedTaxes copyWith({
    double? tax,
    int? taxRate,
    double? price,
    String? apiAlias,
  }) {
    return ProductListingElementsCalculatedPriceCalculatedTaxes()
      ..tax = tax ?? this.tax
      ..taxRate = taxRate ?? this.taxRate
      ..price = price ?? this.price
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsCalculatedPriceTaxRules $ProductListingElementsCalculatedPriceTaxRulesFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCalculatedPriceTaxRules productListingElementsCalculatedPriceTaxRules = ProductListingElementsCalculatedPriceTaxRules();
  final int? taxRate = jsonConvert.convert<int>(json['taxRate']);
  if (taxRate != null) {
    productListingElementsCalculatedPriceTaxRules.taxRate = taxRate;
  }
  final int? percentage = jsonConvert.convert<int>(json['percentage']);
  if (percentage != null) {
    productListingElementsCalculatedPriceTaxRules.percentage = percentage;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCalculatedPriceTaxRules.apiAlias = apiAlias;
  }
  return productListingElementsCalculatedPriceTaxRules;
}

Map<String, dynamic> $ProductListingElementsCalculatedPriceTaxRulesToJson(
    ProductListingElementsCalculatedPriceTaxRules entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['taxRate'] = entity.taxRate;
  data['percentage'] = entity.percentage;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCalculatedPriceTaxRulesExtension on ProductListingElementsCalculatedPriceTaxRules {
  ProductListingElementsCalculatedPriceTaxRules copyWith({
    int? taxRate,
    int? percentage,
    String? apiAlias,
  }) {
    return ProductListingElementsCalculatedPriceTaxRules()
      ..taxRate = taxRate ?? this.taxRate
      ..percentage = percentage ?? this.percentage
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsCalculatedCheapestPrice $ProductListingElementsCalculatedCheapestPriceFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCalculatedCheapestPrice productListingElementsCalculatedCheapestPrice = ProductListingElementsCalculatedCheapestPrice();
  final double? unitPrice = jsonConvert.convert<double>(json['unitPrice']);
  if (unitPrice != null) {
    productListingElementsCalculatedCheapestPrice.unitPrice = unitPrice;
  }
  final int? quantity = jsonConvert.convert<int>(json['quantity']);
  if (quantity != null) {
    productListingElementsCalculatedCheapestPrice.quantity = quantity;
  }
  final double? totalPrice = jsonConvert.convert<double>(json['totalPrice']);
  if (totalPrice != null) {
    productListingElementsCalculatedCheapestPrice.totalPrice = totalPrice;
  }
  final List<
      ProductListingElementsCalculatedCheapestPriceCalculatedTaxes>? calculatedTaxes = (json['calculatedTaxes'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          ProductListingElementsCalculatedCheapestPriceCalculatedTaxes>(
          e) as ProductListingElementsCalculatedCheapestPriceCalculatedTaxes)
      .toList();
  if (calculatedTaxes != null) {
    productListingElementsCalculatedCheapestPrice.calculatedTaxes =
        calculatedTaxes;
  }
  final List<
      ProductListingElementsCalculatedCheapestPriceTaxRules>? taxRules = (json['taxRules'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          ProductListingElementsCalculatedCheapestPriceTaxRules>(
          e) as ProductListingElementsCalculatedCheapestPriceTaxRules).toList();
  if (taxRules != null) {
    productListingElementsCalculatedCheapestPrice.taxRules = taxRules;
  }
  final dynamic referencePrice = json['referencePrice'];
  if (referencePrice != null) {
    productListingElementsCalculatedCheapestPrice.referencePrice =
        referencePrice;
  }
  final dynamic listPrice = json['listPrice'];
  if (listPrice != null) {
    productListingElementsCalculatedCheapestPrice.listPrice = listPrice;
  }
  final dynamic regulationPrice = json['regulationPrice'];
  if (regulationPrice != null) {
    productListingElementsCalculatedCheapestPrice.regulationPrice =
        regulationPrice;
  }
  final bool? hasRange = jsonConvert.convert<bool>(json['hasRange']);
  if (hasRange != null) {
    productListingElementsCalculatedCheapestPrice.hasRange = hasRange;
  }
  final String? variantId = jsonConvert.convert<String>(json['variantId']);
  if (variantId != null) {
    productListingElementsCalculatedCheapestPrice.variantId = variantId;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCalculatedCheapestPrice.apiAlias = apiAlias;
  }
  return productListingElementsCalculatedCheapestPrice;
}

Map<String, dynamic> $ProductListingElementsCalculatedCheapestPriceToJson(
    ProductListingElementsCalculatedCheapestPrice entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['unitPrice'] = entity.unitPrice;
  data['quantity'] = entity.quantity;
  data['totalPrice'] = entity.totalPrice;
  data['calculatedTaxes'] =
      entity.calculatedTaxes?.map((v) => v.toJson()).toList();
  data['taxRules'] = entity.taxRules?.map((v) => v.toJson()).toList();
  data['referencePrice'] = entity.referencePrice;
  data['listPrice'] = entity.listPrice;
  data['regulationPrice'] = entity.regulationPrice;
  data['hasRange'] = entity.hasRange;
  data['variantId'] = entity.variantId;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCalculatedCheapestPriceExtension on ProductListingElementsCalculatedCheapestPrice {
  ProductListingElementsCalculatedCheapestPrice copyWith({
    double? unitPrice,
    int? quantity,
    double? totalPrice,
    List<
        ProductListingElementsCalculatedCheapestPriceCalculatedTaxes>? calculatedTaxes,
    List<ProductListingElementsCalculatedCheapestPriceTaxRules>? taxRules,
    dynamic referencePrice,
    dynamic listPrice,
    dynamic regulationPrice,
    bool? hasRange,
    String? variantId,
    String? apiAlias,
  }) {
    return ProductListingElementsCalculatedCheapestPrice()
      ..unitPrice = unitPrice ?? this.unitPrice
      ..quantity = quantity ?? this.quantity
      ..totalPrice = totalPrice ?? this.totalPrice
      ..calculatedTaxes = calculatedTaxes ?? this.calculatedTaxes
      ..taxRules = taxRules ?? this.taxRules
      ..referencePrice = referencePrice ?? this.referencePrice
      ..listPrice = listPrice ?? this.listPrice
      ..regulationPrice = regulationPrice ?? this.regulationPrice
      ..hasRange = hasRange ?? this.hasRange
      ..variantId = variantId ?? this.variantId
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsCalculatedCheapestPriceCalculatedTaxes $ProductListingElementsCalculatedCheapestPriceCalculatedTaxesFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCalculatedCheapestPriceCalculatedTaxes productListingElementsCalculatedCheapestPriceCalculatedTaxes = ProductListingElementsCalculatedCheapestPriceCalculatedTaxes();
  final double? tax = jsonConvert.convert<double>(json['tax']);
  if (tax != null) {
    productListingElementsCalculatedCheapestPriceCalculatedTaxes.tax = tax;
  }
  final int? taxRate = jsonConvert.convert<int>(json['taxRate']);
  if (taxRate != null) {
    productListingElementsCalculatedCheapestPriceCalculatedTaxes.taxRate =
        taxRate;
  }
  final double? price = jsonConvert.convert<double>(json['price']);
  if (price != null) {
    productListingElementsCalculatedCheapestPriceCalculatedTaxes.price = price;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCalculatedCheapestPriceCalculatedTaxes.apiAlias =
        apiAlias;
  }
  return productListingElementsCalculatedCheapestPriceCalculatedTaxes;
}

Map<String,
    dynamic> $ProductListingElementsCalculatedCheapestPriceCalculatedTaxesToJson(
    ProductListingElementsCalculatedCheapestPriceCalculatedTaxes entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tax'] = entity.tax;
  data['taxRate'] = entity.taxRate;
  data['price'] = entity.price;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCalculatedCheapestPriceCalculatedTaxesExtension on ProductListingElementsCalculatedCheapestPriceCalculatedTaxes {
  ProductListingElementsCalculatedCheapestPriceCalculatedTaxes copyWith({
    double? tax,
    int? taxRate,
    double? price,
    String? apiAlias,
  }) {
    return ProductListingElementsCalculatedCheapestPriceCalculatedTaxes()
      ..tax = tax ?? this.tax
      ..taxRate = taxRate ?? this.taxRate
      ..price = price ?? this.price
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingElementsCalculatedCheapestPriceTaxRules $ProductListingElementsCalculatedCheapestPriceTaxRulesFromJson(
    Map<String, dynamic> json) {
  final ProductListingElementsCalculatedCheapestPriceTaxRules productListingElementsCalculatedCheapestPriceTaxRules = ProductListingElementsCalculatedCheapestPriceTaxRules();
  final int? taxRate = jsonConvert.convert<int>(json['taxRate']);
  if (taxRate != null) {
    productListingElementsCalculatedCheapestPriceTaxRules.taxRate = taxRate;
  }
  final int? percentage = jsonConvert.convert<int>(json['percentage']);
  if (percentage != null) {
    productListingElementsCalculatedCheapestPriceTaxRules.percentage =
        percentage;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingElementsCalculatedCheapestPriceTaxRules.apiAlias = apiAlias;
  }
  return productListingElementsCalculatedCheapestPriceTaxRules;
}

Map<String,
    dynamic> $ProductListingElementsCalculatedCheapestPriceTaxRulesToJson(
    ProductListingElementsCalculatedCheapestPriceTaxRules entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['taxRate'] = entity.taxRate;
  data['percentage'] = entity.percentage;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingElementsCalculatedCheapestPriceTaxRulesExtension on ProductListingElementsCalculatedCheapestPriceTaxRules {
  ProductListingElementsCalculatedCheapestPriceTaxRules copyWith({
    int? taxRate,
    int? percentage,
    String? apiAlias,
  }) {
    return ProductListingElementsCalculatedCheapestPriceTaxRules()
      ..taxRate = taxRate ?? this.taxRate
      ..percentage = percentage ?? this.percentage
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregations $ProductListingAggregationsFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregations productListingAggregations = ProductListingAggregations();
  final ProductListingAggregationsManufacturer? manufacturer = jsonConvert
      .convert<ProductListingAggregationsManufacturer>(json['manufacturer']);
  if (manufacturer != null) {
    productListingAggregations.manufacturer = manufacturer;
  }
  final ProductListingAggregationsPrice? price = jsonConvert.convert<
      ProductListingAggregationsPrice>(json['price']);
  if (price != null) {
    productListingAggregations.price = price;
  }
  final ProductListingAggregationsRating? rating = jsonConvert.convert<
      ProductListingAggregationsRating>(json['rating']);
  if (rating != null) {
    productListingAggregations.rating = rating;
  }
  final ProductListingAggregationsShippingFree? shippingFree = jsonConvert
      .convert<ProductListingAggregationsShippingFree>(json['shipping-free']);
  if (shippingFree != null) {
    productListingAggregations.shippingFree = shippingFree;
  }
  final ProductListingAggregationsProperties? properties = jsonConvert.convert<
      ProductListingAggregationsProperties>(json['properties']);
  if (properties != null) {
    productListingAggregations.properties = properties;
  }
  return productListingAggregations;
}

Map<String, dynamic> $ProductListingAggregationsToJson(
    ProductListingAggregations entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['manufacturer'] = entity.manufacturer?.toJson();
  data['price'] = entity.price?.toJson();
  data['rating'] = entity.rating?.toJson();
  data['shipping-free'] = entity.shippingFree?.toJson();
  data['properties'] = entity.properties?.toJson();
  return data;
}

extension ProductListingAggregationsExtension on ProductListingAggregations {
  ProductListingAggregations copyWith({
    ProductListingAggregationsManufacturer? manufacturer,
    ProductListingAggregationsPrice? price,
    ProductListingAggregationsRating? rating,
    ProductListingAggregationsShippingFree? shippingFree,
    ProductListingAggregationsProperties? properties,
  }) {
    return ProductListingAggregations()
      ..manufacturer = manufacturer ?? this.manufacturer
      ..price = price ?? this.price
      ..rating = rating ?? this.rating
      ..shippingFree = shippingFree ?? this.shippingFree
      ..properties = properties ?? this.properties;
  }
}

ProductListingAggregationsManufacturer $ProductListingAggregationsManufacturerFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsManufacturer productListingAggregationsManufacturer = ProductListingAggregationsManufacturer();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsManufacturer.name = name;
  }
  final List<
      ProductListingAggregationsManufacturerEntities>? entities = (json['entities'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          ProductListingAggregationsManufacturerEntities>(
          e) as ProductListingAggregationsManufacturerEntities).toList();
  if (entities != null) {
    productListingAggregationsManufacturer.entities = entities;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsManufacturer.apiAlias = apiAlias;
  }
  return productListingAggregationsManufacturer;
}

Map<String, dynamic> $ProductListingAggregationsManufacturerToJson(
    ProductListingAggregationsManufacturer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['entities'] = entity.entities?.map((v) => v.toJson()).toList();
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsManufacturerExtension on ProductListingAggregationsManufacturer {
  ProductListingAggregationsManufacturer copyWith({
    String? name,
    List<ProductListingAggregationsManufacturerEntities>? entities,
    String? apiAlias,
  }) {
    return ProductListingAggregationsManufacturer()
      ..name = name ?? this.name
      ..entities = entities ?? this.entities
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsManufacturerEntities $ProductListingAggregationsManufacturerEntitiesFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsManufacturerEntities productListingAggregationsManufacturerEntities = ProductListingAggregationsManufacturerEntities();
  final String? versionId = jsonConvert.convert<String>(json['versionId']);
  if (versionId != null) {
    productListingAggregationsManufacturerEntities.versionId = versionId;
  }
  final ProductListingAggregationsManufacturerEntitiesTranslated? translated = jsonConvert
      .convert<ProductListingAggregationsManufacturerEntitiesTranslated>(
      json['translated']);
  if (translated != null) {
    productListingAggregationsManufacturerEntities.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingAggregationsManufacturerEntities.createdAt = createdAt;
  }
  final dynamic updatedAt = json['updatedAt'];
  if (updatedAt != null) {
    productListingAggregationsManufacturerEntities.updatedAt = updatedAt;
  }
  final dynamic mediaId = json['mediaId'];
  if (mediaId != null) {
    productListingAggregationsManufacturerEntities.mediaId = mediaId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsManufacturerEntities.name = name;
  }
  final dynamic link = json['link'];
  if (link != null) {
    productListingAggregationsManufacturerEntities.link = link;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingAggregationsManufacturerEntities.description = description;
  }
  final dynamic media = json['media'];
  if (media != null) {
    productListingAggregationsManufacturerEntities.media = media;
  }
  final dynamic translations = json['translations'];
  if (translations != null) {
    productListingAggregationsManufacturerEntities.translations = translations;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingAggregationsManufacturerEntities.customFields = customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingAggregationsManufacturerEntities.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsManufacturerEntities.apiAlias = apiAlias;
  }
  return productListingAggregationsManufacturerEntities;
}

Map<String, dynamic> $ProductListingAggregationsManufacturerEntitiesToJson(
    ProductListingAggregationsManufacturerEntities entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['versionId'] = entity.versionId;
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['mediaId'] = entity.mediaId;
  data['name'] = entity.name;
  data['link'] = entity.link;
  data['description'] = entity.description;
  data['media'] = entity.media;
  data['translations'] = entity.translations;
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsManufacturerEntitiesExtension on ProductListingAggregationsManufacturerEntities {
  ProductListingAggregationsManufacturerEntities copyWith({
    String? versionId,
    ProductListingAggregationsManufacturerEntitiesTranslated? translated,
    String? createdAt,
    dynamic updatedAt,
    dynamic mediaId,
    String? name,
    dynamic link,
    dynamic description,
    dynamic media,
    dynamic translations,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingAggregationsManufacturerEntities()
      ..versionId = versionId ?? this.versionId
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..mediaId = mediaId ?? this.mediaId
      ..name = name ?? this.name
      ..link = link ?? this.link
      ..description = description ?? this.description
      ..media = media ?? this.media
      ..translations = translations ?? this.translations
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsManufacturerEntitiesTranslated $ProductListingAggregationsManufacturerEntitiesTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsManufacturerEntitiesTranslated productListingAggregationsManufacturerEntitiesTranslated = ProductListingAggregationsManufacturerEntitiesTranslated();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsManufacturerEntitiesTranslated.name = name;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingAggregationsManufacturerEntitiesTranslated.description =
        description;
  }
  final ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields? customFields = jsonConvert
      .convert<
      ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields>(
      json['customFields']);
  if (customFields != null) {
    productListingAggregationsManufacturerEntitiesTranslated.customFields =
        customFields;
  }
  return productListingAggregationsManufacturerEntitiesTranslated;
}

Map<String,
    dynamic> $ProductListingAggregationsManufacturerEntitiesTranslatedToJson(
    ProductListingAggregationsManufacturerEntitiesTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['description'] = entity.description;
  data['customFields'] = entity.customFields?.toJson();
  return data;
}

extension ProductListingAggregationsManufacturerEntitiesTranslatedExtension on ProductListingAggregationsManufacturerEntitiesTranslated {
  ProductListingAggregationsManufacturerEntitiesTranslated copyWith({
    String? name,
    dynamic description,
    ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields? customFields,
  }) {
    return ProductListingAggregationsManufacturerEntitiesTranslated()
      ..name = name ?? this.name
      ..description = description ?? this.description
      ..customFields = customFields ?? this.customFields;
  }
}

ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields $ProductListingAggregationsManufacturerEntitiesTranslatedCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields productListingAggregationsManufacturerEntitiesTranslatedCustomFields = ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields();
  return productListingAggregationsManufacturerEntitiesTranslatedCustomFields;
}

Map<String,
    dynamic> $ProductListingAggregationsManufacturerEntitiesTranslatedCustomFieldsToJson(
    ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension ProductListingAggregationsManufacturerEntitiesTranslatedCustomFieldsExtension on ProductListingAggregationsManufacturerEntitiesTranslatedCustomFields {
}

ProductListingAggregationsPrice $ProductListingAggregationsPriceFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPrice productListingAggregationsPrice = ProductListingAggregationsPrice();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsPrice.name = name;
  }
  final String? min = jsonConvert.convert<String>(json['min']);
  if (min != null) {
    productListingAggregationsPrice.min = min;
  }
  final String? max = jsonConvert.convert<String>(json['max']);
  if (max != null) {
    productListingAggregationsPrice.max = max;
  }
  final dynamic avg = json['avg'];
  if (avg != null) {
    productListingAggregationsPrice.avg = avg;
  }
  final dynamic sum = json['sum'];
  if (sum != null) {
    productListingAggregationsPrice.sum = sum;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsPrice.apiAlias = apiAlias;
  }
  return productListingAggregationsPrice;
}

Map<String, dynamic> $ProductListingAggregationsPriceToJson(
    ProductListingAggregationsPrice entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['min'] = entity.min;
  data['max'] = entity.max;
  data['avg'] = entity.avg;
  data['sum'] = entity.sum;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsPriceExtension on ProductListingAggregationsPrice {
  ProductListingAggregationsPrice copyWith({
    String? name,
    String? min,
    String? max,
    dynamic avg,
    dynamic sum,
    String? apiAlias,
  }) {
    return ProductListingAggregationsPrice()
      ..name = name ?? this.name
      ..min = min ?? this.min
      ..max = max ?? this.max
      ..avg = avg ?? this.avg
      ..sum = sum ?? this.sum
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsRating $ProductListingAggregationsRatingFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsRating productListingAggregationsRating = ProductListingAggregationsRating();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsRating.name = name;
  }
  final dynamic max = json['max'];
  if (max != null) {
    productListingAggregationsRating.max = max;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsRating.apiAlias = apiAlias;
  }
  return productListingAggregationsRating;
}

Map<String, dynamic> $ProductListingAggregationsRatingToJson(
    ProductListingAggregationsRating entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['max'] = entity.max;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsRatingExtension on ProductListingAggregationsRating {
  ProductListingAggregationsRating copyWith({
    String? name,
    dynamic max,
    String? apiAlias,
  }) {
    return ProductListingAggregationsRating()
      ..name = name ?? this.name
      ..max = max ?? this.max
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsShippingFree $ProductListingAggregationsShippingFreeFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsShippingFree productListingAggregationsShippingFree = ProductListingAggregationsShippingFree();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsShippingFree.name = name;
  }
  final String? max = jsonConvert.convert<String>(json['max']);
  if (max != null) {
    productListingAggregationsShippingFree.max = max;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsShippingFree.apiAlias = apiAlias;
  }
  return productListingAggregationsShippingFree;
}

Map<String, dynamic> $ProductListingAggregationsShippingFreeToJson(
    ProductListingAggregationsShippingFree entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['max'] = entity.max;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsShippingFreeExtension on ProductListingAggregationsShippingFree {
  ProductListingAggregationsShippingFree copyWith({
    String? name,
    String? max,
    String? apiAlias,
  }) {
    return ProductListingAggregationsShippingFree()
      ..name = name ?? this.name
      ..max = max ?? this.max
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsProperties $ProductListingAggregationsPropertiesFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsProperties productListingAggregationsProperties = ProductListingAggregationsProperties();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsProperties.name = name;
  }
  final List<
      ProductListingAggregationsPropertiesEntities>? entities = (json['entities'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          ProductListingAggregationsPropertiesEntities>(
          e) as ProductListingAggregationsPropertiesEntities).toList();
  if (entities != null) {
    productListingAggregationsProperties.entities = entities;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsProperties.apiAlias = apiAlias;
  }
  return productListingAggregationsProperties;
}

Map<String, dynamic> $ProductListingAggregationsPropertiesToJson(
    ProductListingAggregationsProperties entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['entities'] = entity.entities?.map((v) => v.toJson()).toList();
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsPropertiesExtension on ProductListingAggregationsProperties {
  ProductListingAggregationsProperties copyWith({
    String? name,
    List<ProductListingAggregationsPropertiesEntities>? entities,
    String? apiAlias,
  }) {
    return ProductListingAggregationsProperties()
      ..name = name ?? this.name
      ..entities = entities ?? this.entities
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsPropertiesEntities $ProductListingAggregationsPropertiesEntitiesFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntities productListingAggregationsPropertiesEntities = ProductListingAggregationsPropertiesEntities();
  final ProductListingAggregationsPropertiesEntitiesTranslated? translated = jsonConvert
      .convert<ProductListingAggregationsPropertiesEntitiesTranslated>(
      json['translated']);
  if (translated != null) {
    productListingAggregationsPropertiesEntities.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingAggregationsPropertiesEntities.createdAt = createdAt;
  }
  final dynamic updatedAt = json['updatedAt'];
  if (updatedAt != null) {
    productListingAggregationsPropertiesEntities.updatedAt = updatedAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsPropertiesEntities.name = name;
  }
  final String? displayType = jsonConvert.convert<String>(json['displayType']);
  if (displayType != null) {
    productListingAggregationsPropertiesEntities.displayType = displayType;
  }
  final String? sortingType = jsonConvert.convert<String>(json['sortingType']);
  if (sortingType != null) {
    productListingAggregationsPropertiesEntities.sortingType = sortingType;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingAggregationsPropertiesEntities.description = description;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingAggregationsPropertiesEntities.position = position;
  }
  final bool? filterable = jsonConvert.convert<bool>(json['filterable']);
  if (filterable != null) {
    productListingAggregationsPropertiesEntities.filterable = filterable;
  }
  final bool? visibleOnProductDetailPage = jsonConvert.convert<bool>(
      json['visibleOnProductDetailPage']);
  if (visibleOnProductDetailPage != null) {
    productListingAggregationsPropertiesEntities.visibleOnProductDetailPage =
        visibleOnProductDetailPage;
  }
  final List<
      ProductListingAggregationsPropertiesEntitiesOptions>? options = (json['options'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          ProductListingAggregationsPropertiesEntitiesOptions>(
          e) as ProductListingAggregationsPropertiesEntitiesOptions).toList();
  if (options != null) {
    productListingAggregationsPropertiesEntities.options = options;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingAggregationsPropertiesEntities.customFields = customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingAggregationsPropertiesEntities.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsPropertiesEntities.apiAlias = apiAlias;
  }
  return productListingAggregationsPropertiesEntities;
}

Map<String, dynamic> $ProductListingAggregationsPropertiesEntitiesToJson(
    ProductListingAggregationsPropertiesEntities entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['name'] = entity.name;
  data['displayType'] = entity.displayType;
  data['sortingType'] = entity.sortingType;
  data['description'] = entity.description;
  data['position'] = entity.position;
  data['filterable'] = entity.filterable;
  data['visibleOnProductDetailPage'] = entity.visibleOnProductDetailPage;
  data['options'] = entity.options?.map((v) => v.toJson()).toList();
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesExtension on ProductListingAggregationsPropertiesEntities {
  ProductListingAggregationsPropertiesEntities copyWith({
    ProductListingAggregationsPropertiesEntitiesTranslated? translated,
    String? createdAt,
    dynamic updatedAt,
    String? name,
    String? displayType,
    String? sortingType,
    dynamic description,
    int? position,
    bool? filterable,
    bool? visibleOnProductDetailPage,
    List<ProductListingAggregationsPropertiesEntitiesOptions>? options,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingAggregationsPropertiesEntities()
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..name = name ?? this.name
      ..displayType = displayType ?? this.displayType
      ..sortingType = sortingType ?? this.sortingType
      ..description = description ?? this.description
      ..position = position ?? this.position
      ..filterable = filterable ?? this.filterable
      ..visibleOnProductDetailPage = visibleOnProductDetailPage ??
          this.visibleOnProductDetailPage
      ..options = options ?? this.options
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsPropertiesEntitiesTranslated $ProductListingAggregationsPropertiesEntitiesTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesTranslated productListingAggregationsPropertiesEntitiesTranslated = ProductListingAggregationsPropertiesEntitiesTranslated();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsPropertiesEntitiesTranslated.name = name;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingAggregationsPropertiesEntitiesTranslated.description =
        description;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingAggregationsPropertiesEntitiesTranslated.position = position;
  }
  final ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields? customFields = jsonConvert
      .convert<
      ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields>(
      json['customFields']);
  if (customFields != null) {
    productListingAggregationsPropertiesEntitiesTranslated.customFields =
        customFields;
  }
  return productListingAggregationsPropertiesEntitiesTranslated;
}

Map<String,
    dynamic> $ProductListingAggregationsPropertiesEntitiesTranslatedToJson(
    ProductListingAggregationsPropertiesEntitiesTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['description'] = entity.description;
  data['position'] = entity.position;
  data['customFields'] = entity.customFields?.toJson();
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesTranslatedExtension on ProductListingAggregationsPropertiesEntitiesTranslated {
  ProductListingAggregationsPropertiesEntitiesTranslated copyWith({
    String? name,
    dynamic description,
    int? position,
    ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields? customFields,
  }) {
    return ProductListingAggregationsPropertiesEntitiesTranslated()
      ..name = name ?? this.name
      ..description = description ?? this.description
      ..position = position ?? this.position
      ..customFields = customFields ?? this.customFields;
  }
}

ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields $ProductListingAggregationsPropertiesEntitiesTranslatedCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields productListingAggregationsPropertiesEntitiesTranslatedCustomFields = ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields();
  return productListingAggregationsPropertiesEntitiesTranslatedCustomFields;
}

Map<String,
    dynamic> $ProductListingAggregationsPropertiesEntitiesTranslatedCustomFieldsToJson(
    ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesTranslatedCustomFieldsExtension on ProductListingAggregationsPropertiesEntitiesTranslatedCustomFields {
}

ProductListingAggregationsPropertiesEntitiesOptions $ProductListingAggregationsPropertiesEntitiesOptionsFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesOptions productListingAggregationsPropertiesEntitiesOptions = ProductListingAggregationsPropertiesEntitiesOptions();
  final ProductListingAggregationsPropertiesEntitiesOptionsTranslated? translated = jsonConvert
      .convert<ProductListingAggregationsPropertiesEntitiesOptionsTranslated>(
      json['translated']);
  if (translated != null) {
    productListingAggregationsPropertiesEntitiesOptions.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingAggregationsPropertiesEntitiesOptions.createdAt = createdAt;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updatedAt']);
  if (updatedAt != null) {
    productListingAggregationsPropertiesEntitiesOptions.updatedAt = updatedAt;
  }
  final String? groupId = jsonConvert.convert<String>(json['groupId']);
  if (groupId != null) {
    productListingAggregationsPropertiesEntitiesOptions.groupId = groupId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsPropertiesEntitiesOptions.name = name;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingAggregationsPropertiesEntitiesOptions.position = position;
  }
  final String? colorHexCode = jsonConvert.convert<String>(
      json['colorHexCode']);
  if (colorHexCode != null) {
    productListingAggregationsPropertiesEntitiesOptions.colorHexCode =
        colorHexCode;
  }
  final dynamic mediaId = json['mediaId'];
  if (mediaId != null) {
    productListingAggregationsPropertiesEntitiesOptions.mediaId = mediaId;
  }
  final ProductListingAggregationsPropertiesEntitiesOptionsGroup? group = jsonConvert
      .convert<ProductListingAggregationsPropertiesEntitiesOptionsGroup>(
      json['group']);
  if (group != null) {
    productListingAggregationsPropertiesEntitiesOptions.group = group;
  }
  final dynamic media = json['media'];
  if (media != null) {
    productListingAggregationsPropertiesEntitiesOptions.media = media;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingAggregationsPropertiesEntitiesOptions.customFields =
        customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingAggregationsPropertiesEntitiesOptions.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsPropertiesEntitiesOptions.apiAlias = apiAlias;
  }
  return productListingAggregationsPropertiesEntitiesOptions;
}

Map<String, dynamic> $ProductListingAggregationsPropertiesEntitiesOptionsToJson(
    ProductListingAggregationsPropertiesEntitiesOptions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['groupId'] = entity.groupId;
  data['name'] = entity.name;
  data['position'] = entity.position;
  data['colorHexCode'] = entity.colorHexCode;
  data['mediaId'] = entity.mediaId;
  data['group'] = entity.group?.toJson();
  data['media'] = entity.media;
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesOptionsExtension on ProductListingAggregationsPropertiesEntitiesOptions {
  ProductListingAggregationsPropertiesEntitiesOptions copyWith({
    ProductListingAggregationsPropertiesEntitiesOptionsTranslated? translated,
    String? createdAt,
    String? updatedAt,
    String? groupId,
    String? name,
    int? position,
    String? colorHexCode,
    dynamic mediaId,
    ProductListingAggregationsPropertiesEntitiesOptionsGroup? group,
    dynamic media,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingAggregationsPropertiesEntitiesOptions()
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..groupId = groupId ?? this.groupId
      ..name = name ?? this.name
      ..position = position ?? this.position
      ..colorHexCode = colorHexCode ?? this.colorHexCode
      ..mediaId = mediaId ?? this.mediaId
      ..group = group ?? this.group
      ..media = media ?? this.media
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsPropertiesEntitiesOptionsTranslated $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesOptionsTranslated productListingAggregationsPropertiesEntitiesOptionsTranslated = ProductListingAggregationsPropertiesEntitiesOptionsTranslated();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsPropertiesEntitiesOptionsTranslated.name = name;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingAggregationsPropertiesEntitiesOptionsTranslated.position =
        position;
  }
  final ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields? customFields = jsonConvert
      .convert<
      ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields>(
      json['customFields']);
  if (customFields != null) {
    productListingAggregationsPropertiesEntitiesOptionsTranslated.customFields =
        customFields;
  }
  return productListingAggregationsPropertiesEntitiesOptionsTranslated;
}

Map<String,
    dynamic> $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedToJson(
    ProductListingAggregationsPropertiesEntitiesOptionsTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['position'] = entity.position;
  data['customFields'] = entity.customFields?.toJson();
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesOptionsTranslatedExtension on ProductListingAggregationsPropertiesEntitiesOptionsTranslated {
  ProductListingAggregationsPropertiesEntitiesOptionsTranslated copyWith({
    String? name,
    int? position,
    ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields? customFields,
  }) {
    return ProductListingAggregationsPropertiesEntitiesOptionsTranslated()
      ..name = name ?? this.name
      ..position = position ?? this.position
      ..customFields = customFields ?? this.customFields;
  }
}

ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields productListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields = ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields();
  return productListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields;
}

Map<String,
    dynamic> $ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFieldsToJson(
    ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFieldsExtension on ProductListingAggregationsPropertiesEntitiesOptionsTranslatedCustomFields {
}

ProductListingAggregationsPropertiesEntitiesOptionsGroup $ProductListingAggregationsPropertiesEntitiesOptionsGroupFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesOptionsGroup productListingAggregationsPropertiesEntitiesOptionsGroup = ProductListingAggregationsPropertiesEntitiesOptionsGroup();
  final ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated? translated = jsonConvert
      .convert<
      ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated>(
      json['translated']);
  if (translated != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.translated =
        translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.createdAt =
        createdAt;
  }
  final dynamic updatedAt = json['updatedAt'];
  if (updatedAt != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.updatedAt =
        updatedAt;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.name = name;
  }
  final String? displayType = jsonConvert.convert<String>(json['displayType']);
  if (displayType != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.displayType =
        displayType;
  }
  final String? sortingType = jsonConvert.convert<String>(json['sortingType']);
  if (sortingType != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.sortingType =
        sortingType;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.description =
        description;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.position =
        position;
  }
  final bool? filterable = jsonConvert.convert<bool>(json['filterable']);
  if (filterable != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.filterable =
        filterable;
  }
  final bool? visibleOnProductDetailPage = jsonConvert.convert<bool>(
      json['visibleOnProductDetailPage']);
  if (visibleOnProductDetailPage != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup
        .visibleOnProductDetailPage = visibleOnProductDetailPage;
  }
  final dynamic options = json['options'];
  if (options != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.options = options;
  }
  final dynamic customFields = json['customFields'];
  if (customFields != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.customFields =
        customFields;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.id = id;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroup.apiAlias =
        apiAlias;
  }
  return productListingAggregationsPropertiesEntitiesOptionsGroup;
}

Map<String,
    dynamic> $ProductListingAggregationsPropertiesEntitiesOptionsGroupToJson(
    ProductListingAggregationsPropertiesEntitiesOptionsGroup entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['name'] = entity.name;
  data['displayType'] = entity.displayType;
  data['sortingType'] = entity.sortingType;
  data['description'] = entity.description;
  data['position'] = entity.position;
  data['filterable'] = entity.filterable;
  data['visibleOnProductDetailPage'] = entity.visibleOnProductDetailPage;
  data['options'] = entity.options;
  data['customFields'] = entity.customFields;
  data['id'] = entity.id;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesOptionsGroupExtension on ProductListingAggregationsPropertiesEntitiesOptionsGroup {
  ProductListingAggregationsPropertiesEntitiesOptionsGroup copyWith({
    ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated? translated,
    String? createdAt,
    dynamic updatedAt,
    String? name,
    String? displayType,
    String? sortingType,
    dynamic description,
    int? position,
    bool? filterable,
    bool? visibleOnProductDetailPage,
    dynamic options,
    dynamic customFields,
    String? id,
    String? apiAlias,
  }) {
    return ProductListingAggregationsPropertiesEntitiesOptionsGroup()
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..name = name ?? this.name
      ..displayType = displayType ?? this.displayType
      ..sortingType = sortingType ?? this.sortingType
      ..description = description ?? this.description
      ..position = position ?? this.position
      ..filterable = filterable ?? this.filterable
      ..visibleOnProductDetailPage = visibleOnProductDetailPage ??
          this.visibleOnProductDetailPage
      ..options = options ?? this.options
      ..customFields = customFields ?? this.customFields
      ..id = id ?? this.id
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated productListingAggregationsPropertiesEntitiesOptionsGroupTranslated = ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroupTranslated.name =
        name;
  }
  final dynamic description = json['description'];
  if (description != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroupTranslated
        .description = description;
  }
  final int? position = jsonConvert.convert<int>(json['position']);
  if (position != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroupTranslated
        .position = position;
  }
  final ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields? customFields = jsonConvert
      .convert<
      ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields>(
      json['customFields']);
  if (customFields != null) {
    productListingAggregationsPropertiesEntitiesOptionsGroupTranslated
        .customFields = customFields;
  }
  return productListingAggregationsPropertiesEntitiesOptionsGroupTranslated;
}

Map<String,
    dynamic> $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedToJson(
    ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['description'] = entity.description;
  data['position'] = entity.position;
  data['customFields'] = entity.customFields?.toJson();
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedExtension on ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated {
  ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated copyWith({
    String? name,
    dynamic description,
    int? position,
    ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields? customFields,
  }) {
    return ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslated()
      ..name = name ?? this.name
      ..description = description ?? this.description
      ..position = position ?? this.position
      ..customFields = customFields ?? this.customFields;
  }
}

ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFieldsFromJson(
    Map<String, dynamic> json) {
  final ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields productListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields = ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields();
  return productListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields;
}

Map<String,
    dynamic> $ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFieldsToJson(
    ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  return data;
}

extension ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFieldsExtension on ProductListingAggregationsPropertiesEntitiesOptionsGroupTranslatedCustomFields {
}

ProductListingCurrentFilters $ProductListingCurrentFiltersFromJson(
    Map<String, dynamic> json) {
  final ProductListingCurrentFilters productListingCurrentFilters = ProductListingCurrentFilters();
  final String? navigationId = jsonConvert.convert<String>(
      json['navigationId']);
  if (navigationId != null) {
    productListingCurrentFilters.navigationId = navigationId;
  }
  final List<dynamic>? manufacturer = (json['manufacturer'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (manufacturer != null) {
    productListingCurrentFilters.manufacturer = manufacturer;
  }
  final ProductListingCurrentFiltersPrice? price = jsonConvert.convert<
      ProductListingCurrentFiltersPrice>(json['price']);
  if (price != null) {
    productListingCurrentFilters.price = price;
  }
  final dynamic rating = json['rating'];
  if (rating != null) {
    productListingCurrentFilters.rating = rating;
  }
  final bool? shippingFree = jsonConvert.convert<bool>(json['shipping-free']);
  if (shippingFree != null) {
    productListingCurrentFilters.shippingFree = shippingFree;
  }
  final List<dynamic>? properties = (json['properties'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (properties != null) {
    productListingCurrentFilters.properties = properties;
  }
  return productListingCurrentFilters;
}

Map<String, dynamic> $ProductListingCurrentFiltersToJson(
    ProductListingCurrentFilters entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['navigationId'] = entity.navigationId;
  data['manufacturer'] = entity.manufacturer;
  data['price'] = entity.price?.toJson();
  data['rating'] = entity.rating;
  data['shipping-free'] = entity.shippingFree;
  data['properties'] = entity.properties;
  return data;
}

extension ProductListingCurrentFiltersExtension on ProductListingCurrentFilters {
  ProductListingCurrentFilters copyWith({
    String? navigationId,
    List<dynamic>? manufacturer,
    ProductListingCurrentFiltersPrice? price,
    dynamic rating,
    bool? shippingFree,
    List<dynamic>? properties,
  }) {
    return ProductListingCurrentFilters()
      ..navigationId = navigationId ?? this.navigationId
      ..manufacturer = manufacturer ?? this.manufacturer
      ..price = price ?? this.price
      ..rating = rating ?? this.rating
      ..shippingFree = shippingFree ?? this.shippingFree
      ..properties = properties ?? this.properties;
  }
}

ProductListingCurrentFiltersPrice $ProductListingCurrentFiltersPriceFromJson(
    Map<String, dynamic> json) {
  final ProductListingCurrentFiltersPrice productListingCurrentFiltersPrice = ProductListingCurrentFiltersPrice();
  final int? min = jsonConvert.convert<int>(json['min']);
  if (min != null) {
    productListingCurrentFiltersPrice.min = min;
  }
  final int? max = jsonConvert.convert<int>(json['max']);
  if (max != null) {
    productListingCurrentFiltersPrice.max = max;
  }
  return productListingCurrentFiltersPrice;
}

Map<String, dynamic> $ProductListingCurrentFiltersPriceToJson(
    ProductListingCurrentFiltersPrice entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['min'] = entity.min;
  data['max'] = entity.max;
  return data;
}

extension ProductListingCurrentFiltersPriceExtension on ProductListingCurrentFiltersPrice {
  ProductListingCurrentFiltersPrice copyWith({
    int? min,
    int? max,
  }) {
    return ProductListingCurrentFiltersPrice()
      ..min = min ?? this.min
      ..max = max ?? this.max;
  }
}

ProductListingAvailableSortings $ProductListingAvailableSortingsFromJson(
    Map<String, dynamic> json) {
  final ProductListingAvailableSortings productListingAvailableSortings = ProductListingAvailableSortings();
  final ProductListingAvailableSortingsTranslated? translated = jsonConvert
      .convert<ProductListingAvailableSortingsTranslated>(json['translated']);
  if (translated != null) {
    productListingAvailableSortings.translated = translated;
  }
  final String? createdAt = jsonConvert.convert<String>(json['createdAt']);
  if (createdAt != null) {
    productListingAvailableSortings.createdAt = createdAt;
  }
  final dynamic updatedAt = json['updatedAt'];
  if (updatedAt != null) {
    productListingAvailableSortings.updatedAt = updatedAt;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    productListingAvailableSortings.key = key;
  }
  final int? priority = jsonConvert.convert<int>(json['priority']);
  if (priority != null) {
    productListingAvailableSortings.priority = priority;
  }
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    productListingAvailableSortings.label = label;
  }
  final String? apiAlias = jsonConvert.convert<String>(json['apiAlias']);
  if (apiAlias != null) {
    productListingAvailableSortings.apiAlias = apiAlias;
  }
  return productListingAvailableSortings;
}

Map<String, dynamic> $ProductListingAvailableSortingsToJson(
    ProductListingAvailableSortings entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['translated'] = entity.translated?.toJson();
  data['createdAt'] = entity.createdAt;
  data['updatedAt'] = entity.updatedAt;
  data['key'] = entity.key;
  data['priority'] = entity.priority;
  data['label'] = entity.label;
  data['apiAlias'] = entity.apiAlias;
  return data;
}

extension ProductListingAvailableSortingsExtension on ProductListingAvailableSortings {
  ProductListingAvailableSortings copyWith({
    ProductListingAvailableSortingsTranslated? translated,
    String? createdAt,
    dynamic updatedAt,
    String? key,
    int? priority,
    String? label,
    String? apiAlias,
  }) {
    return ProductListingAvailableSortings()
      ..translated = translated ?? this.translated
      ..createdAt = createdAt ?? this.createdAt
      ..updatedAt = updatedAt ?? this.updatedAt
      ..key = key ?? this.key
      ..priority = priority ?? this.priority
      ..label = label ?? this.label
      ..apiAlias = apiAlias ?? this.apiAlias;
  }
}

ProductListingAvailableSortingsTranslated $ProductListingAvailableSortingsTranslatedFromJson(
    Map<String, dynamic> json) {
  final ProductListingAvailableSortingsTranslated productListingAvailableSortingsTranslated = ProductListingAvailableSortingsTranslated();
  final String? label = jsonConvert.convert<String>(json['label']);
  if (label != null) {
    productListingAvailableSortingsTranslated.label = label;
  }
  return productListingAvailableSortingsTranslated;
}

Map<String, dynamic> $ProductListingAvailableSortingsTranslatedToJson(
    ProductListingAvailableSortingsTranslated entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['label'] = entity.label;
  return data;
}

extension ProductListingAvailableSortingsTranslatedExtension on ProductListingAvailableSortingsTranslated {
  ProductListingAvailableSortingsTranslated copyWith({
    String? label,
  }) {
    return ProductListingAvailableSortingsTranslated()
      ..label = label ?? this.label;
  }
}