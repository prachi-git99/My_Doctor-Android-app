import 'package:flutter/material.dart';
import 'package:doctor_g/pages/HomePage.dart';
import 'package:doctor_g/pages/UserProfile.dart';
import 'package:doctor_g/utils/Routes.dart';


void main() {
  runApp(const Doctor());
}

class Doctor extends StatelessWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => HomePage(),
        Routes.homePageRoute: (context) => HomePage(),
        Routes.userProfileRoute: (context) => UserProfile(),


      },


    );
  }
}