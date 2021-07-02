import 'package:app_find_home/app/data/providers/user_provider.dart';
import 'package:app_find_home/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void load() {
    //Providers
    Get.put<UserProvider>(UserProvider());

    //Respositories
    Get.put<UserRepository>(UserRepository());
  }
}
