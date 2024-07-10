import 'package:fooduck/isar_collections/food_data.dart';

abstract class FiltersManager {
  static var filters = <String>[];

  static void addFilter (String filter) {
    filters.add(filter);
  }

  static void removeFilter (String filter) {
    filters.remove(filter);
  }

  static bool isApplied (String filter) {
    return filters.contains(filter);
  }

  static void toggleFilter (String filter) {

    if (isApplied(filter)) {

      removeFilter(filter);
    } else {
      addFilter(filter);
    }
  }

  static bool foodDataSatisfiesFilters (FoodData foodData) {
    var tags = foodData.tags.split(";");
    return filters.every((filter) => tags.contains(filter));
  }

  
}