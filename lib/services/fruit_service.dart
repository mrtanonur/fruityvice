import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fruityvice/models/fruit_model.dart';

class FruitService {
  String baseUrl = "https://fruityvice.com/api";
  final dio = Dio();

  Future<List<FruitModel>?> getFruits() async {
    try {
      final response = await dio.get("$baseUrl/fruit/all");

      if (response.statusCode == HttpStatus.ok) {
        List data = response.data;
        List<FruitModel> fruits =
            data.map((fruit) => FruitModel.fromJson(fruit)).toList();

        return fruits;
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
