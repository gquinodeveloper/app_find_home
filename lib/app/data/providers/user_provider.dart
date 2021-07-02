import 'package:app_find_home/app/data/models/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  Future<List<UserModel>> getUsers({int page}) async {
    final dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": page,
      },
    );

    return (response.data["data"] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }

  //Insert
  //Delete
  //Update
  //Search
}
