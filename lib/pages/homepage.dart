import 'package:flutter/material.dart';
import 'package:fooduck/pages/favourites_page.dart';
import 'package:fooduck/pages/food_categories_list_page.dart';
import 'package:fooduck/pages/my_recipes_page.dart';


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

    switch (navigationIndex) {
      case 0:
        currentPage = FoodCategoriesList();
        break;
      case 1:
        currentPage = FavouritesPage();
        break;
      case 2:
        currentPage = MyRecipesPage();
        break;
    }
    

    return Scaffold(
      appBar: AppBar(
        title: Text("FooDuck", style: TextStyle(color: Colors.white,)),
        leading: Icon(
          Icons.catching_pokemon, 
          color: Colors.orange,
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: currentPage,

      bottomNavigationBar: BottomNavigationBar(

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "My Recipes"),
        ],
        selectedItemColor: Colors.orange,
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