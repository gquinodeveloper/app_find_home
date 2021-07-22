import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:app_find_home/app/data/models/request_token.dart';
import 'package:app_find_home/app/data/models/reservation_model.dart';
import 'package:app_find_home/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_find_home/app/data/repositories/reservation_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  final _reservationRepository = Get.find<ReservationRepository>();
  final _authStorage = Get.find<AuthStorageRepository>();

  RequestToken _requestToken = RequestToken();

  HouseModel _house = HouseModel();
  HouseModel get house => _house;

  String _date;

  @override
  void onInit() {
    print("onInit DetailController");
    _loadSession();
    this._house = Get.arguments as HouseModel;

    print(_house.name);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onChangedDate(String value) => _date = value;

  _loadSession() async {
    try {
      _requestToken = await _authStorage.getSession();
      print('object');
    } catch (e) {
      print(e.toString());
    }
  }

  register() async {
    try {
      String result = "";
      ReservationModel oReservation = ReservationModel();
      oReservation.idUser = _requestToken.idUser;
      oReservation.idHouse = _house.idHouse;
      oReservation.date = DateTime.parse(_date);
      oReservation.price = _house.price.toDouble();

      result = await _reservationRepository.insertReservation(
        token: _requestToken.requestToken,
        reservation: oReservation,
      );
      Get.back();
      Get.snackbar(
        'Message',
        result,
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppTheme.cyan,
      );
    } on DioError catch (e) {
      Get.snackbar(
        'Message',
        e.response.data["message"],
        duration: Duration(seconds: 5),
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppTheme.cyan,
      );
    }
  }
}
