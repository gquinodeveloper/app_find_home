import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart' show required;

class HouseProvider {
  final _dio = Dio();
  String _pathBaseUri = "https://api-reservation-flutter.herokuapp.com/";

  Future<List<HouseModel>> getHouses({
    @required String token,
    @required int page,
  }) async {
    Map<String, dynamic> header = {"auth": token};

    final response = await _dio.get(
      _pathBaseUri + 'api/house/houses/1/6',
      options: Options(headers: header),
      /* queryParameters: {
        "page": page,
      }, */
    );
    return (response.data["result"] as List)
        .map((item) => HouseModel.fromJson(item))
        .toList();
  }
}
