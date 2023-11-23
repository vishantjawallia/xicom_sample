import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/dashboard_screen/dashboard_screen_view.dart';
import '../views/splash/splash_view.dart';

class Routes {
  static final List<GetPage<dynamic>> getRoutes = [
    GetPage(
        name: DashboardScreenView.routeName, page: () => DashboardScreenView()),
    GetPage(name: SplashView.routeName, page: () => const SplashView()),
  ];
  static Map<String, Widget Function(BuildContext)> routes = {
    DashboardScreenView.routeName: (p0) => DashboardScreenView(),
    SplashView.routeName: (p0) => const SplashView(),
  };
}
