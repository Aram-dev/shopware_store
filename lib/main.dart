import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shopware_store/features/shopware/domain/repositories/shopware_store_repository.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'features/shopware/data/repositories/shopware_store_repository_impl.dart';
import 'features/shopware/domain/usecases/shopware/shopware_store_use_case.dart';
import 'features/shopware/domain/usecases/shopware/shopware_store_use_case_impl.dart';
import 'features/shopware/presentstion/screens/shopware_products_screen.dart';

void main() {
  final talker = TalkerFlutter.init();
  GetIt.I.registerSingleton(talker);
  GetIt.I<Talker>().debug('Talker initialized');

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://shopware66.armdev.am/store-api',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
  dio.interceptors.add(
    TalkerDioLogger(
      settings: TalkerDioLoggerSettings(
        printRequestData: true,
        printResponseData: true,
      ),
    ),
  );

  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: TalkerBlocLoggerSettings(
      printStateFullData: true,
      printEventFullData: true,
    ),
  );

  GetIt.I.registerLazySingleton<ShopwareProductsUseCase>(
        () => ShopwareProductsUseCaseImpl(repository: GetIt.I.get<ShopwareStoreRepository>()),
  );

  GetIt.I.registerLazySingleton<ShopwareStoreRepository>(
        () => ShopwareStoreRepositoryImpl(dio: dio),
  );

  FlutterError.onError = (details) =>
      GetIt.I<Talker>().handle(details.exception, details.stack);

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }, (e, st) => GetIt.I<Talker>().handle(e, st));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopware Store',
      debugShowCheckedModeBanner: false,
      home: ShopwareProductsScreen(),
    );
  }
}
