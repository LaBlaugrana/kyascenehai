// import 'package:dashboard/profile/profile.dart';
// import 'package:dashboard/profile/update_profile.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/Profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}


const profilepic = 'images/man.png';