import 'package:flutter/material.dart';
import 'package:fooduck/managers/food_category_manager.dart';
import 'package:fooduck/managers/food_data_manager.dart';
import 'package:fooduck/pages/splash_screen.dart';

Future<void> main() async{
  runApp(const MainApp());

  FoodCategoryManager.initializeData();

  await FoodDataManager.initDatabase();
  // await FoodDataManager.clearDB();          // remove in production code
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 166, 0)),
        textTheme: Typography.blackRedmond,
      ),
    );
  }
}
