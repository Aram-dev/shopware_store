part of 'shopware_products_bloc.dart';

class LoadShopwareProducts extends ShopwareProductsEvent {
  LoadShopwareProducts({
    this.completer
  });
  final Completer? completer;

  @override
  // TODO: implement props
  List<Object?> get props => [completer];
}