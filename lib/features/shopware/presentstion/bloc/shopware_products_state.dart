part of 'shopware_products_bloc.dart';

class ShopwareProductsInitial extends ShopwareProductsState {
  @override
  List<Object?> get props => [];
}

class ShopwareProductsLoading extends ShopwareProductsState {
  @override
  List<Object?> get props => [];
}

class ShopwareProductsLoaded extends ShopwareProductsState {
  ShopwareProductsLoaded({
    required this.shopwareProducts
  });
  final ProductListingEntity shopwareProducts;

  @override
  List<Object?> get props => [shopwareProducts];
}

class ShopwareProductsLoadingFailure extends ShopwareProductsState {
  ShopwareProductsLoadingFailure({
    required this.exception
  });
  final Object? exception;

  @override
  List<Object?> get props => [exception];

}