import 'package:get/get.dart';
import 'package:app_find_home/app/routes/app_routes.dart';

import 'package:app_find_home/app/modules/splash/splash_page.dart';
import 'package:app_find_home/app/modules/splash/splash_binding.dart';

import 'package:app_find_home/app/modules/login/login_page.dart';
import 'package:app_find_home/app/modules/login/login_binding.dart';

import 'package:app_find_home/app/modules/home/home_page.dart';
import 'package:app_find_home/app/modules/home/home_binding.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
