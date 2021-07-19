import 'package:app_find_home/app/data/models/user_model.dart';
import 'package:app_find_home/app/data/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final _userRepository = Get.find<UserRepository>();

  String _name = "";
  String _lastname = "";
  String _adress = "";
  String _email = "";
  String _password = "";

  TextEditingController controllerName = TextEditingController();

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

  void onChangedName(String value) => _name = value;

  void onChangedLastName(String value) {
    print(value);
    _lastname = value;
  }

  void onChangedadress(String value) {
    _adress = value;
  }

  void onChangedEmail(String value) {
    _email = value;
  }

  void onChangedPassword(String value) {
    _password = value;
  }

  onClickInsertUser() async {
    try {
      controllerName.value;
      UserModel oUser = UserModel(
          name: _name,
          lastname: _lastname,
          adress: _adress,
          email: _email,
          password: _password);
      /*  oUser.name = "Alejandroo";
      oUser.lastname = "Silvao";
      oUser.adress = "Unknowo";
      oUser.email = "silvaa@gmail.com";
      oUser.password = "123"; */
      String result = await _userRepository.insertUser(userModel: oUser);

      Get.snackbar(
        'Message',
        result,
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
      );
      //print(result);

    } on DioError catch (e) {
      Get.snackbar(
        'Message',
        e.response.data["message"],
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
