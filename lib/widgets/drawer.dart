import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctors_appointment_app/utils/Routes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://cdn-icons-png.flaticon.com/512/607/607414.png";
    return Drawer(
      //backgroundColor: Colors.teal[200],
      child: Container(
        color: Colors.white54,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                ),
                margin: EdgeInsets.zero,
                accountName: Text("Prachi Verma"),
                accountEmail: Text("prachi@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, Routes.homePageRoute);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.teal,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, Routes.userProfileRoute);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.teal,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                //Navigator.pushNamed(context, Routes.homePageRoute);
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.calendar,
                  color: Colors.teal,
                ),
                title: Text(
                  "My Appointments",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}