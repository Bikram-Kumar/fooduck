import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/favourites_manager.dart';
import 'package:fooduck/widgets/food_tile.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({ super.key });

  @override
  FavouritesPageState createState() => FavouritesPageState();
}

class FavouritesPageState extends State<FavouritesPage> {

  @override
  Widget build(BuildContext context) {

    // if (FavouritesManager.hasNoFavourites) {
    //   return Center(
    //     child: Text("You have no favourites yet."),
    //   );
    // }
    
    return FutureBuilder<List<Widget>>(
      future: getFavourites(),
      builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) { 

        if (snapshot.hasData) {
          if (snapshot.data!.isEmpty) {
            return Center(
              child: Text("You have no favourites yet."),
            );
          }

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


      // child: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   children: getFavourites(),
      // ),
    );
  }

  Future<List<Widget>> getFavourites() async {
    var favs = await FavouritesManager.getFavourites();
    var tiles = <FoodTile>[];
    for (FoodData? fav in favs) {
      tiles.add(FoodTile(fav!));
    }
    return tiles;
  }
}