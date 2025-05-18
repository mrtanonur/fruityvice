import 'package:flutter/material.dart';
import 'package:fruityvice/models/nutritions_model.dart';
import 'package:fruityvice/providers/fruit_provider.dart';
import 'package:provider/provider.dart';

class FruitDetailPage extends StatelessWidget {
  const FruitDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    FruitProvider provider = context.read<FruitProvider>();
    NutritionsModel nutritions =
        provider.fruits[provider.fruitIndex!].nutritions;
    return Scaffold(
        appBar: AppBar(
          title: Text("${provider.fruits[provider.fruitIndex!].name}"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customRow("family: ",
                  "${provider.fruits[provider.fruitIndex!].family}"),
              customRow(
                  "order: ", "${provider.fruits[provider.fruitIndex!].order}"),
              customRow(
                  "genus: ", "${provider.fruits[provider.fruitIndex!].genus}"),
              Row(
                children: [
                  const Text(
                    "nutritions: ",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customRow("calories: ", "${nutritions.calories}"),
                      customRow("fat: ", "${nutritions.fat}"),
                      customRow("sugar: ", "${nutritions.sugar}"),
                      customRow(
                          "carbohydrates: ", "${nutritions.carbohydrates}"),
                      customRow("protein: ", "${nutritions.protein}"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

Widget customRow(String leftText, String rightText) {
  return Row(
    children: [
      Text(
        leftText,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      Text(rightText)
    ],
  );
}
