import 'package:flutter/material.dart';
import 'package:fooduck/isar_collections/food_data.dart';
import 'package:fooduck/managers/food_category_manager.dart';
import 'package:fooduck/managers/food_data_manager.dart';
import 'package:fooduck/pages/homepage.dart';

void main() async{
  runApp(const MainApp());
  FoodCategoryManager.initializeData();
  await FoodDataManager.initDatabase();
  for (FoodData? f in await FoodDataManager.getAllFromDB()) {
    print(f?.name);
  }
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 166, 0)),
        textTheme: Typography.blackRedmond,
      ),
    );
  }
}
