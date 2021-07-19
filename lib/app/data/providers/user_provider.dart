import 'dart:convert';

import 'package:app_find_home/app/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class UserProvider {
  final _dio = Dio();
  String _pathBaseUri = "https://api-reservation-flutter.herokuapp.com/";
  Future<List<UserModel>> getUsers({int page}) async {
    final response = await _dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": page,
      },
    );

    return (response.data["data"] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }

  Future<String> insertUser({@required UserModel userModel}) async {
    final response = await _dio.post(
      _pathBaseUri + 'api/user/register',
      data: json.encode(userModel.toJson()),
      /* data: {
        "name": userModel.name,
        "lastname": userModel.lastname,
        "adress": userModel.adress,
        "email": userModel.email,
        "password": userModel.password
      }, */
    );

    return response.data["message"];
  }

  //Insert
  //Delete
  //Update
  //Search
}
