import 'package:app_find_home/app/data/models/user_model.dart';
import 'package:app_find_home/app/data/providers/user_provider.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class UserRepository {
  final _apiProvider = Get.find<UserProvider>();

  Future<List<UserModel>> getUsers({int page}) =>
      _apiProvider.getUsers(page: page);

  Future<String> insertUser({@required UserModel userModel}) =>
      _apiProvider.insertUser(userModel: userModel);
}
