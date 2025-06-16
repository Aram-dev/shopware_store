
import '../../models/product_listing_entity.dart';

abstract class ShopwareProductsUseCase {
  Future<ProductListingEntity> getShopwareProducts(
    String categoryId,
  );
}
