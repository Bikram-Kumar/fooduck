import 'package:flutter/material.dart';
import 'package:fooduck/managers/food_category_manager.dart';
import 'package:fooduck/pages/category_food_list.dart';

class FoodCategoryTile extends StatelessWidget {
  final FoodCategoryData catData;

  const FoodCategoryTile(this.catData, {super.key});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => CategoryFoodList(catData)),
        );
      },
      splashColor: Colors.grey.withOpacity(0.1),
      child: Ink(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: catData.image,
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }

}