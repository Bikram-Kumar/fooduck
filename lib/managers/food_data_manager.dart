import 'dart:io';
import 'dart:math';

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

    // Add some default foods
    // make it addToDB() in production, otherwise data will not persist
    await addToDB(FoodData(0, "Pizza", "pizza.jpg", "Italian;Vegetarian;Non-veg", "Flour, Cheese, Toppings",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(1, "French Fries", "french_fries.jpg", "Quick & Easy;Vegetarian;Vegan;Lactose Free;Gluten Free", "Potato, oil",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(2, "Shrimps", "shrimps.jpg", "Non-veg;Seafood;Lactose Free;Gluten Free", "Shrimps, spices", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(3, "Cake", "cake.jpg", "Vegetarian;Non-veg", "Flour, cream, egg, sugar", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(4, "Coffee", "coffee.jpg", "Vegetarian;Beverages;Quick & Easy;Gluten Free", "Coffe and milk", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(5, "Pancake", "pancake.jpg", "Vegetarian;Quick & Easy", "flour, butter", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(6, "Melon Juice", "melon_juice.jpg", "Vegetarian;Quick & Easy;Beverages;Vegan;Lactose Free;Gluten Free", "melon", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(7, "Pasta", "pasta.jpg", "Vegetarian;Quick & Easy;Vegan;Italian;Lactose Free", "pasta", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(8, "Burger", "burger.jpg", "Vegetarian;Quick & Easy;Vegan;Non-veg", "buns, veg", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(9, "Fish Fry", "fish_fry.jpg", "Non-veg;Lactose Free;Gluten Free", "fish, oil", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(10, "Japanese Noodles", "japanese_noodles.jpg", "Japanese;Vegetarian;Quick & Easy;Vegan", "noodles", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(11, "Noodles", "noodles.jpg", "Vegetarian;Quick & Easy;Vegan;Lactose Free", "noodles", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(12, "Salad", "salad.jpg", "Vegetarian;Quick & Easy;Vegan", "vegetables", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

    await addToDB(FoodData(13, "Sushi", "sushi.jpg", "Japanese;Non-veg;Vegetarian;Gluten Free;Lactose Free", "rice, stuffs", 
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur nunc fermentum purus rutrum, dictum sagittis justo hendrerit. Etiam laoreet pharetra dui et vehicula. In porttitor dapibus lorem eget pretium. Phasellus et ipsum ornare, vestibulum nibh sit amet, pretium velit. Integer malesuada nulla quam, et volutpat risus malesuada at. Nunc dictum leo sed rhoncus iaculis. Pellentesque finibus, justo id viverra bibendum, mauris arcu sollicitudin dui, eu feugiat velit velit non dui. Etiam eu condimentum nisl. Proin fermentum dolor vitae erat vulputate, in sodales est porttitor. Curabitur eu vestibulum sem. Curabitur pulvinar accumsan odio, sit amet malesuada erat hendrerit non."));

  }

  // only adds if not already exists
  static Future<void> addToDB(FoodData foodData) async {
    if (await isar!.foodDatas.where().idEqualTo(foodData.id).isEmpty()) {
      await isar!.writeTxn(() async{
        await isar!.foodDatas.put(foodData);
      });
    }
  }


  // creates entry if not there
  static Future<void> updateInDB(FoodData foodData) async {
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

  static Future<List<FoodData?>> getAllFoodDataWithTag(String tag) async {
    var allWithTag = <FoodData>[];
    for (FoodData? foodData in await getAllFromDB()) {
      var tags = foodData?.tags.split(";");
      if (tags!.contains(tag)) {
        allWithTag.add(foodData!);
      }
    }
    return allWithTag;
  }



  static Future<List<FoodData?>> getFavourites() async {
    return await isar!.foodDatas.filter().isFavouriteEqualTo(true).findAll();
     
  }

  static Future<List<FoodData?>> getCustoms() async {
    return await isar!.foodDatas.filter().isCustomEqualTo(true).findAll();
     
  }

  static Future<int?> getMaxId() async {
    // .max() has a bug  which always returns null
    var ids = await isar!.foodDatas.where().idProperty().findAll();
    return ids.reduce(max);
     
  }


  static Future<void> deleteFromDB(FoodData foodData) async {

    await isar!.writeTxn(() async{
      await isar!.foodDatas.delete(foodData.id);
    });
  }

  static Future<void> clearDB() async {
    await isar!.writeTxn(() async{
      await isar!.foodDatas.clear();
    });
  }


}