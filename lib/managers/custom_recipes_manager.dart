import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/food_data_manager.dart';

abstract class CustomRecipesManager {

  Future<void> addCustomRecipe(name, imageName, tags) async {

    var foodData = FoodData(
      (await FoodDataManager.getMaxId())! + 1,
      name,
      imageName,
      tags
    );
    foodData.isCustom = true;

    FoodDataManager.addToDB(foodData);
  }
}