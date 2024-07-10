import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/food_data_manager.dart';
import 'package:fooduck/widgets/custom_food_tile.dart';

class MyRecipesPage extends StatefulWidget {
  const MyRecipesPage({ super.key });

  @override
  MyRecipesPageState createState() => MyRecipesPageState();
}

class MyRecipesPageState extends State<MyRecipesPage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: getCustomRecipes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {

              if (snapshot.data!.isEmpty) {
                return Center(
                  child: Text("You have not added any recipes. Try creating one."),
                );
              }

              return GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: snapshot.data!,
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),

        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: FloatingActionButton(
              onPressed: openAddRecipePopup,

              child: Icon(Icons.add),
            )
          ),
        ),
      ],
    );

  }


  void openAddRecipePopup() {

    String name = "My Recipe";
    String tags = "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Recipe"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "My Recipe",
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Vegetarian;Quick & Easy;Beverages",
                ),
                onChanged: (value) {
                  tags = value;
                },
              ),
            ],
          ),

          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Cancel")),
            TextButton(
              onPressed: () async {

                Navigator.of(context).pop();

                int id = (await FoodDataManager.getMaxId())! + 1;
            
                await FoodDataManager.addToDB(FoodData(
                  id,
                  name, 
                  "coffee.jpg", 
                  tags
                )..isCustom = true);

                setState(() {});
              },
              child: Text("Add")),
          ],
        );
      },
      );
  }
  
  Future<List<Widget>> getCustomRecipes() async {
    var tiles = <CustomFoodTile>[];

    for (FoodData? foodData in await FoodDataManager.getCustoms()) {
      tiles.add(CustomFoodTile(foodData!));
    }

    return tiles;

  }


}