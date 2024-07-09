import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/food_data_manager.dart';

abstract class FavouritesManager {

  static var favourites = <FoodData?>[];

  static Future<void> addFavourite (FoodData food) async {
    food.isFavourite = true;
    await FoodDataManager.updateInDB(food);
  }

  static Future<void> removeFavourite (FoodData food) async {
    food.isFavourite = false;
    await FoodDataManager.updateInDB(food);
  }

  static Future<void> toggleFavourite (FoodData food) async {

    if (food.isFavourite) {
      await removeFavourite(food);
    } else {
      await addFavourite(food);
    }
  }


  static Future<bool> get hasNoFavourites async {
    favourites = await FoodDataManager.getFavourites();
    return favourites.isEmpty;
  }

  static Future<List<FoodData?>> getFavourites () async {
    favourites = await FoodDataManager.getFavourites();
    return favourites;
  }


}