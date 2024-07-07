import 'package:flutter/material.dart';

class FoodData {
  String name;
  late AssetImage image;

  FoodData(this.name, String imageName, {String imagePathPrefix = "assets/images/food/"}) {
    image = AssetImage(imagePathPrefix + imageName);
  }
}