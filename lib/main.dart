import 'package:flutter/material.dart';
import 'package:fooduck/managers/food_category_manager.dart';
import 'package:fooduck/pages/homepage.dart';

void main() {
  runApp(const MainApp());
  FoodCategoryManager.initializeData();
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
