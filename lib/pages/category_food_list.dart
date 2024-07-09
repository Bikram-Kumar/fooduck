import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
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
      body: FutureBuilder<List<Widget>>(
        future: getCategoryFoods(),
        builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) { 

          if (snapshot.hasData) {

            return GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: snapshot.data!,
            );
            
          } else {
            
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<Widget>> getCategoryFoods() async {
    var tiles = <FoodTile>[];

    for (FoodData? foodData in await FoodDataManager.getAllFoodDataWithTag(widget.catData.name)) {
      tiles.add(FoodTile(foodData!));
    }

    return tiles;
  }
}