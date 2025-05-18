class NutritionsModel {
  int? calories;
  double? fat;
  double? sugar;
  double? carbohydrates;
  double? protein;

  NutritionsModel(
      {this.calories, this.fat, this.sugar, this.carbohydrates, this.protein});

  factory NutritionsModel.fromJson(Map<String, dynamic> json) {
    return NutritionsModel(
      calories: json["calories"],
      fat: json["fat"],
      sugar: json["sugar"],
      carbohydrates: json["carbohydrates"],
      protein: json["protein"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "calories": calories,
      "fat": fat,
      "sugar": sugar,
      "carbonhydrates": carbohydrates,
      "protein": protein,
    };
  }
}
