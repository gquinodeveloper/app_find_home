import 'package:get/get.dart';

class UserModel {
  UserModel({
    int id,
    String name,
    String email,
  }) {
    this.id = id;
    this.name = name;
    this.email = email;
  }

  RxInt _id = RxInt(0);
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = RxString("");
  set name(String value) => _name.value = value;
  String get name => _name.value;

  RxString _email = RxString("");
  set email(String value) => _email.value = value;
  String get email => _email.value;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["first_name"],
      email: json["email"],
    );
  }
}
