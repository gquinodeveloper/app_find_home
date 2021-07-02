import 'package:app_find_home/app/data/models/user_model.dart';
import 'package:app_find_home/app/data/providers/user_provider.dart';
import 'package:get/get.dart';

class UserRepository {
  //UserRepository obj = new UserRepository();
  final _apiProvider = Get.find<UserProvider>();

  Future<List<UserModel>> getUsers({int page}) =>
      _apiProvider.getUsers(page: page);
}
