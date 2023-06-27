import 'package:flutter/material.dart';
import 'package:untitled/screens/home_page/pages/Homepage.dart';
import 'package:untitled/screens/home_page/pages/new-main.dart';
import 'package:untitled/screens/splash_onboard/splash_onbo.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
