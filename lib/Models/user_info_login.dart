// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  int statusCode;
  String message;
  String accessToken;
  ExpiresToken expiresToken;

  Login({
    required this.statusCode,
    required this.message,
    required this.accessToken,
    required this.expiresToken,
  });

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        statusCode: json["status_code"],
        message: json["message"],
        accessToken: json["access_token"],
        expiresToken: ExpiresToken.fromJson(json["expires_token"]),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "message": message,
        "access_token": accessToken,
        "expires_token": expiresToken.toJson(),
      };
}

class ExpiresToken {
  String id;
  String role;
  int iat;
  int exp;

  ExpiresToken({
    required this.id,
    required this.role,
    required this.iat,
    required this.exp,
  });

  factory ExpiresToken.fromJson(Map<String, dynamic> json) => ExpiresToken(
        id: json["id"],
        role: json["role"],
        iat: json["iat"],
        exp: json["exp"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role": role,
        "iat": iat,
        "exp": exp,
      };
}
