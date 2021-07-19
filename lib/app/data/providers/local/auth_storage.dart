import 'dart:convert';

import 'package:app_find_home/app/data/models/request_token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class AuthStorage {
  static const KEY = "session";
  //final FlutterSecureStorage _storage = Get.find<FlutterSecureStorage>();
  final FlutterSecureStorage _storage = Get.put(FlutterSecureStorage());

  Future<void> setSession({
    @required RequestToken requestToken,
  }) async {
    await _storage.write(key: KEY, value: jsonEncode(requestToken.toJson()));
  }

  Future<RequestToken> getSession() async {
    String value = await _storage.read(key: KEY);
    return RequestToken.fromJson(jsonDecode(value));
  }
}
