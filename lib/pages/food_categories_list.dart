import 'package:flutter/material.dart';
import 'package:fooduck/managers/food_category_manager.dart';
import 'package:fooduck/widgets/food_category_tile.dart';

class FoodCategoriesList extends StatefulWidget {
  const FoodCategoriesList({ super.key });

  @override
  FoodCategoriesListState createState() => FoodCategoriesListState();
}

class FoodCategoriesListState extends State<FoodCategoriesList> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: getFoodCategories(),
    );
  }


  static List<Widget> getFoodCategories() {
    var categories = FoodCategoryManager.getCategories();
    var tiles = <FoodCategoryTile>[];
    for (FoodCategoryData cat in categories) {
      tiles.add(FoodCategoryTile(cat));
    }
    return tiles;
  }


}



