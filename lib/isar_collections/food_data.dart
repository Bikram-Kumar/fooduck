import 'package:isar/isar.dart';

part 'food_data.g.dart';

@collection
class FoodData{
  Id id;

  String name;

  String imagePath;

  FoodData(this.id, this.name, this.imagePath);
}