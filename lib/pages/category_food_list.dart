import 'package:flutter/material.dart';
import 'package:fooduck/managers/food_category_manager.dart';
import 'package:fooduck/managers/food_data_manager.dart';
import 'package:fooduck/widgets/food_tile.dart';

class CategoryFoodList extends StatefulWidget {

  final FoodCategoryData catData;
  const CategoryFoodList(this.catData, { super.key });

  @override
  CategoryFoodListState createState() => CategoryFoodListState();
}

class CategoryFoodListState extends State<CategoryFoodList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.catData.name),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: getCategoryFoods(),
      ),
    );
  }

  List<Widget> getCategoryFoods() {
    var tiles = <FoodTile>[];

    for (FoodData cat in widget.catData.foods) {
      tiles.add(FoodTile(cat));
    }

    return tiles;
  }
}