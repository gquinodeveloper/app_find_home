import 'package:app_find_home/app/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  loadHome() {
    Get.toNamed(AppRoutes.HOME);
    //Get.offNamed(AppRoutes.HOME);
  }
}
