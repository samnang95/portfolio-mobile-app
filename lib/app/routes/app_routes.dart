import 'package:get/get.dart';

import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_page.dart';

class AppRoutes {
  static const String splashPage = '/splash';

  static final routesPage = [
    GetPage(
      name: splashPage,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
