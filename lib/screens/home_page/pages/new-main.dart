import 'package:flutter/material.dart';
// import 'package:hush/Pages/Homepage.dart';
// import 'package:hush/main_page.dart';
// import 'package:hush/Pages/login.dart';
// import 'package:hush/Pages/Register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: AuthPage(),

    );
  }
}


