import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/data/models/request_token.dart';
import 'package:app_find_home/app/data/repositories/authentication_repository.dart';
import 'package:app_find_home/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_find_home/app/routes/app_routes.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _authRepository = Get.find<AuthenticationRepository>();
  final _authStorage = Get.find<AuthStorageRepository>();

  RequestToken _oRequestToken = RequestToken();
  RequestToken get oRequestToken => _oRequestToken;

  RxBool _isOscure = true.obs;
  RxBool get isOscure => _isOscure;

  /* String _email = "";
  String _password = ""; */
  String _email = "gqcrispin@gmail.com";
  String _password = "123456";

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

  void onChangedEmail(String value) {
    print(value);
    _email = value;
  }

  void onChangedPassword(String value) {
    print(value);
    _password = value;
  }

  void showPassword() {
    _isOscure.value = _isOscure.value ? false : true;
  }

  auth() async {
    try {
      _oRequestToken = await _authRepository.authentication(
        email: _email,
        password: _password,
      );

      //Guardar datos en storage
      _authStorage.setSession(requestToken: _oRequestToken);

      if (_oRequestToken.success) {
        Get.offNamed(AppRoutes.HOME, arguments: _oRequestToken.requestToken);
      }
    } on DioError catch (e) {
      Get.snackbar(
        'Message',
        e.response.data["message"],
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppTheme.cyan,
      );
    }
  }

  loadHome() {
    Get.toNamed(AppRoutes.HOME);
    //
  }
}
