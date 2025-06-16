import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../domain/models/product_listing_entity.dart';
import '../../domain/usecases/shopware/shopware_store_use_case.dart';
import 'base/base.dart';

part 'shopware_products_event.dart';

part 'shopware_products_state.dart';

class ProductBloc extends Bloc<ShopwareProductsEvent, ShopwareProductsState> {
  ProductBloc(this.shopwareProductsUseCase) : super(ShopwareProductsInitial()) {
    on<LoadShopwareProducts>(_fetchShopwareProducts);
  }

  final ShopwareProductsUseCase shopwareProductsUseCase;

  Future<void> _fetchShopwareProducts(
      LoadShopwareProducts event,
      Emitter<ShopwareProductsState> emit,
      ) async {
    try {
      if (state is! ShopwareProductsLoaded) {
        emit(ShopwareProductsLoading());
      }
      final nowPlayingMovies = await shopwareProductsUseCase
          .getShopwareProducts('a515ae260223466f8e37471d279e6406');
      emit(
        ShopwareProductsLoaded(
          shopwareProducts: nowPlayingMovies
        ),
      );
    } catch (e, st) {
      emit(ShopwareProductsLoadingFailure(exception: e));
      GetIt.I<Talker>().handle(e, st);
    } finally {
      event.completer?.complete();
    }
  }
}