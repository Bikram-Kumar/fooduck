import 'package:flutter/material.dart';
import 'package:fooduck/managers/food_data_manager.dart';

class FoodCategoryData {


  String name;
  late AssetImage image;
  final _foods = <FoodData>{};

  FoodCategoryData(this.name, String imageName, {imagePathPrefix = "assets/images/categories/"}) {
    image = AssetImage(imagePathPrefix + imageName);
  }

  Set<FoodData> get foods {
    return _foods;
  }


  void addFood(FoodData food) {
    _foods.add(food);
  }

  void removeFood(FoodData food) {
    _foods.remove(food);
  }
    
}

abstract class FoodCategoryManager {

  static var categories = <FoodCategoryData>[];

  static void initializeData () {
    categories.addAll([
      FoodCategoryData("Quick & Easy", "pasta.jpg"),
      FoodCategoryData("Non-veg", "meat.jpg"),
      FoodCategoryData("Veg", "melon_juice.jpg"),
      FoodCategoryData("Beverages", "coffee.jpg"),
    ]);

    categories[0].addFood(FoodData("Pizza", "pizza.jpg"));
    categories[0].addFood(FoodData("French Fries", "french_fries.jpg"));

    categories[1].addFood(FoodData("Shrimps", "shrimps.jpg"));

    categories[2].addFood(FoodData("French Fries", "french_fries.jpg"));

    categories[3].addFood(FoodData("Pizza", "pizza.jpg"));
  }

  static List<FoodCategoryData> getCategories() {
    return categories;
  }

}