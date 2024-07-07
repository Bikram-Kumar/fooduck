import 'package:flutter/material.dart';
import 'package:fooduck/pages/favourites_page.dart';
import 'package:fooduck/pages/food_categories_list.dart';


class Homepage extends StatefulWidget {
  const Homepage({ super.key });

  @override
  HomepageState createState() => HomepageState();

}

class HomepageState extends State<Homepage> {

  int navigationIndex = 0;
  
  Widget currentPage = FoodCategoriesList();


  @override
  Widget build(BuildContext context) {
    
    if (navigationIndex == 0) {
      currentPage = FoodCategoriesList();
    } else {
      currentPage = FavouritesPage();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("FooDuck"),
        leading: Icon(
          Icons.catching_pokemon, 
          color: Colors.orange,
        ),
      ),
      body: currentPage,

      bottomNavigationBar: BottomNavigationBar(

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourites"),
        ],
        currentIndex: navigationIndex,
        onTap: (int tappedIndex) {
          if (navigationIndex == tappedIndex) return;

          setState(() {
            navigationIndex = tappedIndex;
          });

        },
        
      ),
    );
  }
}