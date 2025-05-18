import 'package:flutter/material.dart';
import 'package:fruityvice/models/fruit_model.dart';
import 'package:fruityvice/services/fruit_service.dart';

class FruitProvider extends ChangeNotifier {
  int? fruitIndex;
  List<FruitModel> fruits = [];

  FruitService fvService = FruitService();

  Future<List<FruitModel>?> getFruits() async {
    final response = await fvService.getFruits();
    if (response != null) {
      fruits = response;
      return fruits;
    } else
      return null;
  }
}
