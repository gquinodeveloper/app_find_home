import 'package:app_find_home/app/data/models/request_token.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:meta/meta.dart' show required;

class AuthenticationProvider {
  //final Dio _dio = Get.find<Dio>();

  String _pathBaseUri = "https://api-reservation-flutter.herokuapp.com/";
  Future<RequestToken> authentication({
    @required String email,
    @required String password,
  }) async {
    final _dio = Dio();
    final response = await _dio.post(
      _pathBaseUri + "api/user/auth",
      data: {
        "email": email,
        "password": password,
      },
    );
    return RequestToken.fromJson(response.data);
  }
}
