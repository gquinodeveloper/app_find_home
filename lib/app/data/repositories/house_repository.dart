import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:app_find_home/app/data/providers/house_provider.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class HouseRepository {
  final _apiProvider = Get.find<HouseProvider>();

  Future<List<HouseModel>> getHouses({
    @required String token,
    @required int page,
  }) =>
      _apiProvider.getHouses(token: token, page: page);
}
