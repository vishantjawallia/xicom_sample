// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:xicom_sample/config/config.dart';
import 'package:xicom_sample/config/routes.dart';
import 'package:xicom_sample/theme/theme.dart';
import 'core/locator.dart';
import 'core/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/services/navigator_service.dart';
import 'views/splash/splash_view.dart';

void main() async {
  var arry1 = [1, 2, 3, 4, 5, 6];
  var arry2 = [3, 5, 7, 9, 2];

  for (var i = 0; i < arry1.length; i++) {
    if (arry1.length <= arry2.length) {
      if (arry1[i] == arry2[i]) {
        print("value" + arry1[i].toString());
      }
    }
  }
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await LocatorInjector.setupLocator();
  runApp(
    MultiProvider(
      providers: ProviderInjector.providers,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return GetMaterialApp(
        key: _key,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.native,
        title: APP_NAME,
        theme: CustomTheme.light,
        routes: Routes.routes,
        initialRoute: SplashView.routeName,
      );
    } else {
      return GetMaterialApp(
        key: _key,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.native,
        title: APP_NAME,
        theme: CustomTheme.light,
        getPages: Routes.getRoutes,
        navigatorKey: locator<NavigatorService>().navigatorKey,
        home: const SplashView(),
      );
    }
  }
}
