import 'package:flutter/material.dart';
// import 'package:quizz_app/screens/main_menu.dart';
import 'package:untitled/screens/Slumber_quest/screens/main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainMenu(),
    );
  }
}
