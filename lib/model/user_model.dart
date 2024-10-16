// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    User user;
    String accessToken;
    String refreshToken;


    UserModel({
        required this.user,
        required this.accessToken,
        required this.refreshToken,

    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        user: User.fromJson(json["user"]),
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],

    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "accessToken": accessToken,
        "refreshToken": refreshToken,
  
    };
}

class User {
    String id;
    String name;
    String surname;
    String role;


    User({
        required this.id,
        required this.name,
        required this.surname,

        required this.role,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
 
        role: json["role"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "surname": surname,
     
        "role": role,
    };
}