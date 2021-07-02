import 'package:app_find_home/app/data/models/user_model.dart';
import 'package:app_find_home/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _userRepository = Get.find<UserRepository>();

  RxList<UserModel> _users = RxList<UserModel>([]);
  RxList<UserModel> get users => _users;

  RxBool _isLoading = true.obs;
  RxBool get isLoading => _isLoading;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    _loadUser();
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadUser() async {
    try {
      _users.value = await _userRepository.getUsers(page: 1);
      _isLoading.value = false;
    } catch (e) {
      print(e.toString());
    }
  }
}
