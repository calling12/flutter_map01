import 'dart:convert';

RegistorModel registorModelFromJson(String str) =>
    RegistorModel.fromJson(json.decode(str));

String registorModelToJson(RegistorModel data) => json.encode(data.toJson());

class RegistorModel {
  String role;
  String id;
  String name;
  String email;
  String password;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  RegistorModel({
    required this.role,
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory RegistorModel.fromJson(Map<String, dynamic> json) => RegistorModel(
        role: json["role"],
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "role": role,
        "_id": id,
        "name": name,
        "email": email,
        "password": password,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}
