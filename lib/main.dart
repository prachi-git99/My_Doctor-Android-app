import 'package:doctors_appointment_app/pages/category/Dermatologist.dart';
import 'package:doctors_appointment_app/pages/specialistProfile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:doctors_appointment_app/pages/HomePage.dart';
import 'package:doctors_appointment_app/pages/UserProfile.dart';
import 'package:doctors_appointment_app/utils/Routes.dart';
import 'package:doctors_appointment_app/pages/ImageUpload.dart';


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
        Routes.imageUploadRoute: (context) => ImageUpload(),
        Routes.dermatologistRoute:(context) => Dermatologist(),
        Routes.doctorProfileRoute:(context) => DoctorProfile(),



      },


    );
  }
}