import 'package:fruityvice/models/nutritions_model.dart';

class FruitModel {
  String name;
  int id;
  String family;
  String order;
  String genus;
  NutritionsModel nutritions;

  FruitModel(
      {required this.name,
      required this.id,
      required this.family,
      required this.order,
      required this.genus,
      required this.nutritions});

  factory FruitModel.fromJson(Map<String, dynamic> json) {
    return FruitModel(
        name: json["name"],
        id: json["id"],
        family: json["family"],
        order: json["order"],
        genus: json["genus"],
        nutritions: NutritionsModel.fromJson(json["nutritions"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "id": id,
      "family": family,
      "order": order,
      "genus": genus,
      "nutritions": nutritions
    };
  }
}
