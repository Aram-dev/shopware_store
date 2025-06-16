import 'package:dio/dio.dart';
import 'package:shopware_store/features/shopware/domain/models/product_listing_entity.dart';

import '../../domain/repositories/shopware_store_repository.dart';

class ShopwareStoreRepositoryImpl extends ShopwareStoreRepository {
  ShopwareStoreRepositoryImpl({required this.dio});

  final Dio dio;

  @override
  Future<ProductListingEntity> getShopwareProducts(String categoryId) {
    final String endpoint = '/product-listing/$categoryId';
    return _fetchMoviesFromApi(endpoint);
  }

  Future<ProductListingEntity> _fetchMoviesFromApi(String endpoint) async {
    final response = await dio.post(
      endpoint,
      options: Options(
        headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'sw-context-token': 'YsTH5Ld8fuMZgvBzKNCZtgXNgtZAAngy',
      'Postman-Token': 'dc8c8ac3-2c8b-4278-8d68-e0665cbc30e4'
      },
      ),
    );

    final entity = ProductListingEntity(
      elements: null,
      aggregations: null,
      page: null,
      limit: null,
      entity: null,
      total: null,
      states: null,
      sorting: null,
      currentFilters: null,
      availableSortings: null,
      streamId: null,
      apiAlias: null,
    );

    return entity;
  }
}
