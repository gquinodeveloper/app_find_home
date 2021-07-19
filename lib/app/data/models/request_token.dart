class RequestToken {
  bool success;
  String requestToken;
  int idUser;

  RequestToken({
    this.success,
    this.requestToken,
    this.idUser,
  });

  factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
        success: json["success"],
        requestToken: json["request_token"],
        idUser: json["id_user"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "request_token": requestToken,
        "id_user": idUser,
      };
}
