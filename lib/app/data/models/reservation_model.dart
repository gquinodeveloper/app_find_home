class ReservationModel {
  int id;
  int idUser;
  int idHouse;
  DateTime date;
  double price;
  int status;

  ReservationModel({
    this.id,
    this.idUser,
    this.idHouse,
    this.date,
    this.price,
    this.status,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      ReservationModel(
        id: json["id"],
        idUser: json["idUser"],
        idHouse: json["idHouse"],
        date: DateTime.parse(json["date"]),
        price: json["price"].toDouble(),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idUser": idUser,
        "idHouse": idHouse,
        "date": date.toIso8601String(),
        "price": price,
        "status": status,
      };
}
