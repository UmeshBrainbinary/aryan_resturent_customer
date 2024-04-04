// To parse this JSON data, do
//
//     final sliderAd = sliderAdFromJson(jsonString);

import 'dart:convert';

SliderAd sliderAdFromJson(String str) => SliderAd.fromJson(json.decode(str));

String sliderAdToJson(SliderAd data) => json.encode(data.toJson());

class SliderAd {
  List<Datum>? data;

  SliderAd({
    this.data,
  });

  factory SliderAd.fromJson(Map<String, dynamic> json) => SliderAd(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  int? id;
  String? title;
  String? description;
  int? status;
  String? image;

  Datum({
    this.id,
    this.title,
    this.description,
    this.status,
    this.image,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    status: json["status"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "status": status,
    "image": image,
  };
}
