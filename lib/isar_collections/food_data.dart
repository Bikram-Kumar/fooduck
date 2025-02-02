import 'package:isar/isar.dart';

part 'food_data.g.dart';

@collection
class FoodData{
  Id id;

  String name;

  // semi-colon separated
  String tags;
  
  String imageName;
  String imageDir;
  bool isFavourite = false;
  
  bool isCustom = false;

  String ingredients;
  String recipe;


  FoodData(this.id, this.name, this.imageName, this.tags, this.ingredients, this.recipe, {this.imageDir = "assets/images/food/"});

}