import 'package:get/get.dart';

class UserModel {
  UserModel({
    int id,
    String name,
    String lastname,
    String adress,
    String email,
    String password,
  }) {
    this.id = id;
    this.name = name;
    this.lastname = lastname;
    this.adress = adress;
    this.email = email;
    this.password = password;
  }

  RxInt _id = RxInt(0);
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = RxString("");
  set name(String value) => _name.value = value;
  String get name => _name.value;

  RxString _lastname = RxString("");
  set lastname(String value) => _lastname.value = value;
  String get lastname => _lastname.value;

  RxString _adress = RxString("");
  set adress(String value) => _adress.value = value;
  String get adress => _adress.value;

  RxString _email = RxString("");
  set email(String value) => _email.value = value;
  String get email => _email.value;

  RxString _password = RxString("");
  set password(String value) => _password.value = value;
  String get password => _password.value;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      /* name: json["first_name"],
      email: json["email"], */
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "lastname": lastname,
        "adress": adress,
        "email": email,
        "password": password,
      };
}
