import 'package:app_find_home/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("init Splash");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    _loadLogin();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadLogin() async {
    await Future.delayed(
      Duration(seconds: 2),
      //() => Get.offNamed(AppRoutes.LOGIN),
      () => Get.offNamed(AppRoutes.HOME),
    );
  }
}
