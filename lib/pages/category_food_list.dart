import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/filters_manager.dart';
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

            if (snapshot.data!.isEmpty) {
              return Stack(
                children: [
                  Center(
                    child: Text("Nothing here :(")
                  ),

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: FloatingActionButton(
                        onPressed: showFilterPopup,
                        child: Icon(Icons.tune),
                      ),
                    ),
                  )
                ],
              );
            }

            return Stack(
              children: [
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  children: snapshot.data!,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: FloatingActionButton(
                      onPressed: showFilterPopup,
                      child: Icon(Icons.tune),
                    ),
                  ),
                )
              ],
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
      if (FiltersManager.foodDataSatisfiesFilters(foodData!)) {
        tiles.add(FoodTile(foodData));
      }
      
    }

    return tiles;
  }


  Future<void> showFilterPopup() async{
    var checkboxColor = Colors.blue;
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text("Filter"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                  CheckboxListTile(
                    title: Text("Vegetarian"),
                    activeColor: checkboxColor,
                    value: FiltersManager.isApplied("Vegetarian"),
                    onChanged: (bool? value) {
                      FiltersManager.toggleFilter("Vegetarian");
                      setState(() {});
                    },
                  ),

                  CheckboxListTile(
                    title: Text("Vegan"),
                    activeColor: checkboxColor,
                    value: FiltersManager.isApplied("Vegan"),
                    onChanged: (bool? value) {
                      FiltersManager.toggleFilter("Vegan");
                      setState(() {});
                    },
                  ),

                  CheckboxListTile(
                    title: Text("Gluten Free"),
                    activeColor: checkboxColor,
                    value: FiltersManager.isApplied("Gluten Free"),
                    onChanged: (bool? value) {
                      FiltersManager.toggleFilter("Gluten Free");
                      setState(() {});
                    },
                  ),


                  CheckboxListTile(
                    title: Text("Lactose Free"),
                    activeColor: checkboxColor,
                    value: FiltersManager.isApplied("Lactose Free"),
                    onChanged: (bool? value) {
                      FiltersManager.toggleFilter("Lactose Free");
                      setState(() {});
                    },
                  ),

                ],
              ),
            
            );
          }
        );
      },
      ).then((value) {
        setState(() {
        });
      },);  
    }


}