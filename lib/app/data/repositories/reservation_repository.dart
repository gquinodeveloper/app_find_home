import 'package:app_find_home/app/data/models/reservation_model.dart';
import 'package:app_find_home/app/data/providers/reservation_provider.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class ReservationRepository {
  final _apiProvider = Get.find<ReservationProvider>();

  Future<String> insertReservation({
    @required String token,
    @required ReservationModel reservation,
  }) =>
      _apiProvider.insertReservation(token: token, reservation: reservation);
}
