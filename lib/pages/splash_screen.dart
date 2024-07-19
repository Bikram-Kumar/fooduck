import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fooduck/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ super.key });

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage(),));
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Align(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Image(image: ExactAssetImage("assets/icon.png"), width: 128,),
            Text("FooDuck", style: TextStyle(color: Colors.white, fontSize: 30),),
          ],
        ),
      ),
    );
  }
}