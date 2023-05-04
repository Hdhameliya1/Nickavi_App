// To parse this JSON data, do
//
//     final userData = userDataFromMap(jsonString);

import 'dart:convert';

UserData userDataFromMap(String str) => UserData.fromMap(json.decode(str));

String userDataToMap(UserData data) => json.encode(data.toMap());

class UserData {
  List<Electronic>? shoes;
  List<Electronic>? electronics;

  UserData({
    this.shoes,
    this.electronics,
  });

  factory UserData.fromMap(Map<String, dynamic> json) => UserData(
        shoes: json["shoes"] == null
            ? []
            : List<Electronic>.from(
                json["shoes"]!.map((x) => Electronic.fromMap(x))),
        electronics: json["Electronics"] == null
            ? []
            : List<Electronic>.from(
                json["Electronics"]!.map((x) => Electronic.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "shoes": shoes == null
            ? []
            : List<dynamic>.from(shoes!.map((x) => x.toMap())),
        "Electronics": electronics == null
            ? []
            : List<dynamic>.from(electronics!.map((x) => x.toMap())),
      };
}

class Electronic {
  String? image;
  String? text;
  String? price;

  Electronic({
    this.image,
    this.text,
    this.price,
  });

  factory Electronic.fromMap(Map<String, dynamic> json) => Electronic(
        image: json["image"],
        text: json["text"],
        price: json["price"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
        "text": text,
        "price": price,
      };
}
