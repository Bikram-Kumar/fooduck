import 'dart:io';

import 'package:fooduck/isar_collections/food_data.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';

// also manages Isar for now
class FoodDataManager {
  String name;
  late AssetImage image;
  static Directory? dbDir;
  static Isar? isar;

  FoodDataManager(this.name, String imageName, {String imagePathPrefix = "assets/images/food/"}) {
    image = AssetImage(imagePathPrefix + imageName);
  }

  static Future<void> initDatabase() async {
    dbDir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([FoodDataSchema], directory: dbDir!.path, name:"fooduck_food_data.db");

    addToDB(FoodData(0, "Pizza", "pizza.jpg"));
    addToDB(FoodData(1, "French Fries", "french_fries.jpg"));
    print(dbDir);

    // categories[1].addFood(FoodDataManager("Shrimps", "shrimps.jpg"));

    // categories[2].addFood(FoodDataManager("French Fries", "french_fries.jpg"));

    // categories[3].addFood(FoodDataManager("Pizza", "pizza.jpg"));
  }

  static Future<void> addToDB(FoodData foodData) async {

    await isar!.writeTxn(() async{
      await isar!.foodDatas.put(foodData);
    });
  }

  static Future<FoodData?> getFromDB(Id id) async {
    return await isar!.foodDatas.get(id);
    
  }

  static Future<List<FoodData?>> getAllFromDB() async {
    return await isar!.foodDatas.where().findAll();
    
  }

  

  static Future<void> deleteFromDB(FoodData foodData) async {

    await isar!.writeTxn(() async{
      await isar!.foodDatas.delete(foodData.id);
    });
  }

}