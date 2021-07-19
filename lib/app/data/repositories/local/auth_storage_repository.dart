import 'package:app_find_home/app/data/models/request_token.dart';
import 'package:app_find_home/app/data/providers/local/auth_storage.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class AuthStorageRepository {
  final _authStorage = Get.find<AuthStorage>();

  Future<void> setSession({
    @required RequestToken requestToken,
  }) =>
      _authStorage.setSession(requestToken: requestToken);

  Future<RequestToken> getSession() => _authStorage.getSession();
}
