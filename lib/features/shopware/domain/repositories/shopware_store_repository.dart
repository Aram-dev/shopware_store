import '../models/product_listing_entity.dart';

abstract class ShopwareStoreRepository {
  Future<ProductListingEntity> getShopwareProducts(String categoryId,);
  }