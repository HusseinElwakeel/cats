import 'dart:convert';

class CatsDetailsModel {
  final String length;
  final String origin;
  final String imageLink;
  final double? intelligence;
  final double minWeight;
  final double maxWeight;
  final String name;

  CatsDetailsModel({
    required this.length,
    required this.origin,
    required this.imageLink,
    this.intelligence,
    required this.minWeight,
    required this.maxWeight,
    required this.name,
  });

  factory CatsDetailsModel.fromRawJson(String str) => CatsDetailsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CatsDetailsModel.fromJson(Map<String, dynamic> json) => CatsDetailsModel(
    length: json["length"],
    origin: json["origin"],
    imageLink: json["image_link"],
    intelligence: json["intelligence"],
    minWeight: json["min_weight"]?.toDouble(),
    maxWeight: json["max_weight"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "length": length,
    "origin": origin,
    "image_link": imageLink,
    "intelligence": intelligence,
    "min_weight": minWeight,
    "max_weight": maxWeight,
    "name": name,
  };
}
