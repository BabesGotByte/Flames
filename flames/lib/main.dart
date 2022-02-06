import 'package:flames/letter.dart';
import 'package:flames/percent.dart';
import 'package:flames/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent[400],
      ),
      home: SplashScreen(),
    );
  }
}