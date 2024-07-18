import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/favourites_manager.dart';
import 'package:fooduck/pages/food_recipe_page.dart';

class FoodTile extends StatefulWidget {
  final FoodData foodData;
  const FoodTile(this.foodData, { super.key });

  @override
  State<FoodTile> createState() => _FoodTileState();

  
}

class _FoodTileState extends State<FoodTile> {

  AssetImage? img; 
  @override
  void initState() {
    img = AssetImage(widget.foodData.imageDir + widget.foodData.imageName);
    super.initState();
  }


  @override
  void didChangeDependencies() {
    precacheImage(img!, context);
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FoodRecipePage(widget.foodData))
            );

          },
          splashColor: Colors.grey.withOpacity(0.1),
          child: Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: img!,
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

