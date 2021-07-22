import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:app_find_home/app/modules/detail/detail_binding.dart';
import 'package:app_find_home/app/modules/signup/signup_binding.dart';
import 'package:app_find_home/app/modules/signup/signup_page.dart';
import 'package:get/get.dart';
import 'package:app_find_home/app/routes/app_routes.dart';

import 'package:app_find_home/app/modules/splash/splash_page.dart';
import 'package:app_find_home/app/modules/splash/splash_binding.dart';

import 'package:app_find_home/app/modules/login/login_page.dart';
import 'package:app_find_home/app/modules/login/login_binding.dart';

import 'package:app_find_home/app/modules/home/home_page.dart';
import 'package:app_find_home/app/modules/home/home_binding.dart';

import 'package:app_find_home/app/modules/detail/detail_page.dart';

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
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.SIGNUP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.DETAIL,
      page: () => DetailPage(house: HouseModel()),
      binding: DetailBinding(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
