import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/food_data_manager.dart';
import 'package:fooduck/widgets/food_tile.dart';

class CustomFoodTile extends StatefulWidget {
  final FoodData foodData;

  const CustomFoodTile(this.foodData, { super.key });

  @override
  CustomFoodTileState createState() => CustomFoodTileState();
}

class CustomFoodTileState extends State<CustomFoodTile> {

  bool deleted = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FoodTile(widget.foodData),
        
        Container(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () async {
              if (deleted) return;
              await FoodDataManager.deleteFromDB(widget.foodData);
              setState(() {
                deleted = true;
              });
            },
            icon: Icon(Icons.delete),
            color: deleted ? Colors.grey : Colors.white,
          ),
        )
      ],
    );
  }
}