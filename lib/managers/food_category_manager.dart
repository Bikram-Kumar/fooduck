import 'package:flutter/material.dart';
import 'package:fooduck/managers/food_data_manager.dart';

class FoodCategoryData {


  String name;
  late AssetImage image;
  final _foods = <FoodDataManager>{};

  FoodCategoryData(this.name, String imageName, {imagePathPrefix = "assets/images/categories/"}) {
    image = AssetImage(imagePathPrefix + imageName);
  }

  Set<FoodDataManager> get foods {
    return _foods;
  }


  void addFood(FoodDataManager food) {
    _foods.add(food);
  }

  void removeFood(FoodDataManager food) {
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

    categories[0].addFood(FoodDataManager("Pizza", "pizza.jpg"));
    categories[0].addFood(FoodDataManager("French Fries", "french_fries.jpg"));

    categories[1].addFood(FoodDataManager("Shrimps", "shrimps.jpg"));

    categories[2].addFood(FoodDataManager("French Fries", "french_fries.jpg"));

    categories[3].addFood(FoodDataManager("Pizza", "pizza.jpg"));
  }

  static List<FoodCategoryData> getCategories() {
    return categories;
  }

}