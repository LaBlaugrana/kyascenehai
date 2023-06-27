import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:untitled/screens/Profile/profile_main.dart';

// import '../main.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF233C67),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Ionicons.arrow_back),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(80, 0, 50, 0),
          child: Text('Profile'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Stack(
                children: const [
                  SizedBox(
                    width: 190,
                    height: 110,
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage(profilepic),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  // Form(child: Column(
                  //   children: [
                  //     TextFormField(
                  //
                  //     )
                  //   ],
                  // ),),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}






// Positioned(
// top: 0,
// bottom: 0,
// child: Container(
// height: 35,
// width: 35,
// decoration: const BoxDecoration(
// borderRadius: BorderRadius.circular(100),
// color: Colors.yellowAccent,
// ),
// child: const Icon(
// Ionicons.camera,
// size: 23,
// ),
// ),),