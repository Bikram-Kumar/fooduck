import 'package:flutter/material.dart';
import 'package:fooduck/managers/favourites_manager.dart';
import 'package:fooduck/managers/food_data_manager.dart';

class FoodTile extends StatefulWidget {
  final FoodDataManager foodData;
  const FoodTile(this.foodData, { super.key });

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Stack(
          children: [
            InkWell(
              onTap: (){},
              splashColor: Colors.grey.withOpacity(0.1),
              child: Ink(
                width: 234,
                height: 234,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.foodData.image,
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            IconButton(
              onPressed: (){
                setState(() {
                  FavouritesManager.toggleFavourite(widget.foodData);
                });
              },
              icon: (FavouritesManager.isFavourite(widget.foodData)) ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border),
            )
          ]
        ),

        Text(widget.foodData.name),
      ],
    );
  }
}

