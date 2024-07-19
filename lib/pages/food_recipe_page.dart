import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';

class FoodRecipePage extends StatelessWidget {

  final FoodData foodData;

  const FoodRecipePage(this.foodData, { super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(foodData.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Image(
              image: AssetImage(foodData.imageDir + foodData.imageName),
              fit: BoxFit.fitWidth,
              ),
        
            Row(
              children: [
                Text("What you need: ", style: TextStyle(fontWeight: FontWeight.bold),),
                Text(foodData.ingredients),
              ],
            ),
            SizedBox(height: 20,),
            Text(foodData.recipe),
          ],
        ),
      )
    );
  }

}