import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/favourites_manager.dart';

class FoodTile extends StatefulWidget {
  final FoodData foodData;
  const FoodTile(this.foodData, { super.key });

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){},
          splashColor: Colors.grey.withOpacity(0.1),
          child: Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.foodData.imageDir + widget.foodData.imageName),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        IconButton(
          onPressed: () async {
            await FavouritesManager.toggleFavourite(widget.foodData);
            setState(() {
              //
            });
          },
          icon: (widget.foodData.isFavourite) ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border),
        ),
    
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(10),
          child: Text(
            widget.foodData.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
    
      ],
    
        );

      
  }
}

