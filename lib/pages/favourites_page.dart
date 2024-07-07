import 'package:flutter/material.dart';
import 'package:fooduck/managers/favourites_manager.dart';
import 'package:fooduck/managers/food_data_manager.dart';
import 'package:fooduck/widgets/food_tile.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({ super.key });

  @override
  FavouritesPageState createState() => FavouritesPageState();
}

class FavouritesPageState extends State<FavouritesPage> {

  @override
  Widget build(BuildContext context) {

    if (FavouritesManager.hasNoFavourites) {
      return Center(
        child: Text("You have no favourites yet."),
      );
    }
    
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: getFavourites(),
    );
  }

  List<Widget> getFavourites(){
    var favs = FavouritesManager.getFavourites();
    var tiles = <FoodTile>[];
    for (FoodData fav in favs) {
      tiles.add(FoodTile(fav));
    }
    return tiles;
  }
}