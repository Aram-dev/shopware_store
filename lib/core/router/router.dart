import 'package:auto_route/auto_route.dart';

import 'package:shopware_store/features/shopware/presentstion/screens/shopware_products_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ShopwareProductsRoute.page, initial: true),
  ];
}