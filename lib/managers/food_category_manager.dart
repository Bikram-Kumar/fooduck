import 'package:flutter/material.dart';

class FoodCategoryData {


  String name;
  late AssetImage image;

  FoodCategoryData(this.name, String imageName, {imagePathPrefix = "assets/images/food/"}) {
    image = AssetImage(imagePathPrefix + imageName);
  }
    
}

abstract class FoodCategoryManager {

  static var categories = <FoodCategoryData>[];

  static void initializeData () {
    categories.addAll([
      FoodCategoryData("Quick & Easy", "pasta.jpg"),
      FoodCategoryData("Non-veg", "meat.jpg"),
      FoodCategoryData("Vegetarian", "melon_juice.jpg"),
      FoodCategoryData("Beverages", "coffee.jpg"),
      FoodCategoryData("Italian", "pizza.jpg"),
      FoodCategoryData("Japanese", "sushi.jpg"),
    ]);


  }

  static List<FoodCategoryData> getCategories() {
    return categories;
  }

}