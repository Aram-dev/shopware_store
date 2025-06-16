// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ShopwareProductsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShopwareProductsScreen(),
      );
    }
  };
}

/// generated route for
/// [ShopwareProductsScreen]
class ShopwareProductsRoute extends PageRouteInfo<void> {
  const ShopwareProductsRoute({List<PageRouteInfo>? children})
      : super(
          ShopwareProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopwareProductsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
