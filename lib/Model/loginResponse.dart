// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.data,
    required this.apiToken,
    required this.message,
  });

  Data data;
  String apiToken;
  String message;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        data: Data.fromJson(json["data"]),
        apiToken: json["api_token"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "api_token": apiToken,
        "message": message,
      };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.profileImage,
  });

  int id;
  String name;
  String email;
  dynamic phone;
  dynamic profileImage;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"] == null ? "" : json["name"],
        email: json["email"] == null ? "" : json["email"],
        phone: json["phone"] == null ? "" : json["phone"],
        profileImage: json["profile_image"] == null ? "" : json["profile_image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "profile_image": profileImage,
      };
}
