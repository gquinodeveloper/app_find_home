import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:app_find_home/app/data/models/request_token.dart';
import 'package:app_find_home/app/data/models/user_model.dart';
import 'package:app_find_home/app/data/repositories/house_repository.dart';
import 'package:app_find_home/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_find_home/app/data/repositories/user_repository.dart';
import 'package:app_find_home/app/modules/home/home_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _userRepository = Get.find<UserRepository>();
  final _houseRepository = Get.find<HouseRepository>();
  final _authStorage = Get.find<AuthStorageRepository>();

  RxList<UserModel> _users = RxList<UserModel>([]);
  RxList<UserModel> get users => _users;

  RxList<HouseModel> _houses = RxList<HouseModel>([]);
  RxList<HouseModel> get houses => _houses;

  RequestToken _requestToken = RequestToken();

  RxBool _isLoading = true.obs;
  RxBool get isLoading => _isLoading;

  RxInt _isSelectedIndex = 0.obs;
  RxInt get isSelectedIndex => _isSelectedIndex;

  @override
  void onInit() async {
    await _loadSession();
    super.onInit();
  }

  @override
  void onReady() {
    _loadUser();
    _loadHouses();
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  selectedIndex(int index) {
    isSelectedIndex.value = index;
  }

  _loadSession() async {
    try {
      _requestToken = await _authStorage.getSession();
      print('object');
    } catch (e) {
      print(e.toString());
    }
  }

  _loadUser() async {
    try {
      _users.value = await _userRepository.getUsers(page: 1);
      _isLoading.value = false;
    } catch (e) {
      print(e.toString());
    }
  }

  _loadHouses() async {
    try {
      print(_requestToken.requestToken);
      _houses.value = await _houseRepository.getHouses(
        token: _requestToken.requestToken,
        page: 1,
      );
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
}
