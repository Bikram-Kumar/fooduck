import 'package:fooduck/managers/food_data_manager.dart';

abstract class FavouritesManager {

  static final _favourites = <FoodData>{};

  static void addFavourite (FoodData food) {
    _favourites.add(food);
  }

  static void removeFavourite (FoodData food) {
    _favourites.remove(food);
  }

  static void toggleFavourite (FoodData food) {

    if (_favourites.contains(food)) {
      removeFavourite(food);
    } else {
      addFavourite(food);
    }
  }

  static isFavourite(FoodData food) {
    return _favourites.contains(food);
  }

  static bool get hasNoFavourites {
    return _favourites.isEmpty;
  }

  static Set<FoodData> getFavourites () {
    return _favourites;
  }


}