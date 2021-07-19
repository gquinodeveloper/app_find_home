import 'package:app_find_home/app/data/providers/authentication_provider.dart';
import 'package:app_find_home/app/data/providers/house_provider.dart';
import 'package:app_find_home/app/data/providers/local/auth_storage.dart';
import 'package:app_find_home/app/data/providers/user_provider.dart';
import 'package:app_find_home/app/data/repositories/authentication_repository.dart';
import 'package:app_find_home/app/data/repositories/house_repository.dart';
import 'package:app_find_home/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_find_home/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void load() {
    //Providers
    Get.put<UserProvider>(UserProvider());
    Get.put<AuthenticationProvider>(AuthenticationProvider());
    Get.put<HouseProvider>(HouseProvider());

    //Local
    Get.put<AuthStorage>(AuthStorage());

    //Respositories
    Get.put<UserRepository>(UserRepository());
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<HouseRepository>(HouseRepository());

    //Local
    Get.put<AuthStorageRepository>(AuthStorageRepository());
  }
}
