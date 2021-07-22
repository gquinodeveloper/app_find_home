import 'dart:convert';

import 'package:app_find_home/app/data/models/reservation_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart' show required;

class ReservationProvider {
  final _dio = Dio();
  String _pathBaseUri = "https://api-reservation-flutter.herokuapp.com/";

  Future<String> insertReservation({
    @required String token,
    @required ReservationModel reservation,
  }) async {
    Map<String, dynamic> header = {"auth": token};
    final response = await _dio.post(
      _pathBaseUri + 'api/reservation/register',
      options: Options(headers: header),
      data: json.encode(reservation.toJson()),
    );

    return response.data["message"];
  }
}
