
import 'package:shopware_store/features/shopware/domain/usecases/shopware/shopware_store_use_case.dart';

import '../../models/product_listing_entity.dart';
import '../../repositories/shopware_store_repository.dart';

class ShopwareProductsUseCaseImpl extends ShopwareProductsUseCase {
  ShopwareProductsUseCaseImpl({required this.repository});

  final ShopwareStoreRepository repository;

  @override
  Future<ProductListingEntity> getShopwareProducts(
    String categoryId,
  ) async {
    return repository.getShopwareProducts(categoryId);
  }
}
