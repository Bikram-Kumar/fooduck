import 'package:fooduck/managers/food_data_manager.dart';

abstract class FavouritesManager {

  static final _favourites = <FoodDataManager>{};

  static void addFavourite (FoodDataManager food) {
    _favourites.add(food);
  }

  static void removeFavourite (FoodDataManager food) {
    _favourites.remove(food);
  }

  static void toggleFavourite (FoodDataManager food) {

    if (_favourites.contains(food)) {
      removeFavourite(food);
    } else {
      addFavourite(food);
    }
  }

  static isFavourite(FoodDataManager food) {
    return _favourites.contains(food);
  }

  static bool get hasNoFavourites {
    return _favourites.isEmpty;
  }

  static Set<FoodDataManager> getFavourites () {
    return _favourites;
  }


}