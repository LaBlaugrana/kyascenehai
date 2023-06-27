import 'dart:ffi';

import 'package:get/get.dart';

// import 'package:dashboard/profile/update_profile.dart';
import 'package:flutter/material.dart';
// import 'package:dashboard/main.dart';
import 'package:ionicons/ionicons.dart';
import 'package:untitled/screens/Profile/profile_main.dart';
import 'package:untitled/screens/Profile/update_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF233C67),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UpdateProfileScreen()),
            );
          },
          icon: Icon(Ionicons.arrow_back),
        ),
        title: Center(child: Text('Profile')),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Ionicons.settings_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 180,
                height: 110,
                child: CircleAvatar(
                  child: Image(
                    image: AssetImage(profilepic),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Sam Altman',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'altman.sam752@hotmail.com',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              // const Divider(),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 170,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 34,
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: ListTile(
                  leading: Icon(
                    Ionicons.newspaper,
                    color: Color(0xFF233C67),
                  ),
                  title: Center(
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 17),
                      )),
                  trailing: Icon(
                    Ionicons.arrow_forward_circle,
                    color: Color(0xFF233C67),
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: ListTile(
                  leading: Icon(
                    Ionicons.lock_closed,
                    color: Color(0xFF233C67),
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 50, 0),
                    child: Center(
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 17),
                        )),
                  ),
                  trailing: Icon(
                    Ionicons.arrow_forward_circle,
                    color: Color(0xFF233C67),
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: ListTile(
                  leading: Icon(
                    Ionicons.information_circle,
                    color: Color(0xFF233C67),
                  ),
                  title: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 99, 0),
                    child: Center(
                        child: Text(
                          'About',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 17),
                        )),
                  ),
                  trailing: Icon(
                    Ionicons.arrow_forward_circle,
                    color: Color(0xFF233C67),
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 55,
                width: 174,
                child: ElevatedButton(
                  onPressed: null,

                  // padding: EdgeInsets.fromLTRB(6, 0, 10, 0),
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Icon(
                        Ionicons.log_out,
                        color: Colors.red,
                      ),
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
