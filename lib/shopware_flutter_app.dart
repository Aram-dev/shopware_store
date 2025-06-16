import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shopware_store/theme/theme.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'core/router/router.dart';

class ShopwareFlutterApp extends StatefulWidget {
  const ShopwareFlutterApp({super.key});

  @override
  State<ShopwareFlutterApp> createState() => _ShopwareFlutterAppState();
}

class _ShopwareFlutterAppState extends State<ShopwareFlutterApp> {

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      title: 'ShopwareFlutterApp',
      theme: darkTheme,
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          TalkerRouteObserver(GetIt.I<Talker>()),
        ],
      ),
    );
  }

}