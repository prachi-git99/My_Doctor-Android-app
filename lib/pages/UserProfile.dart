import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctor_g/utils/Routes.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      bottomSheet:GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, Routes.imageUploadRoute);
        },
        child:  Container(
          margin: EdgeInsets.only(top: 10),
          height: 50,
          width: double.infinity,
          child: Card(
            elevation: 10,
            shadowColor: Colors.white70,
            color: Colors.teal,
            child:Center(
              child: Text("Upload Your Reports",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top:10),
          child:Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 80,
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/004/797/849/original/illustration-of-cute-male-doctor-with-thumb-up-kawaii-cartoon-character-design-vector.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                    "Prachi Verma",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal[900],
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.white70,
                  color: Colors.white,
                  child:SizedBox(
                    height: 50,
                    width: 350,
                    child:Padding(
                      padding: EdgeInsets.only(top: 10,left:35),
                      child:
                      Text("user.profile@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.white70,
                    color: Colors.white,
                    child:SizedBox(
                      height: 50,
                      width: 350,
                      child:Padding(
                        padding: EdgeInsets.only(top: 10,left:35),
                        child:
                        Text("7300802027",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.white70,
                    color: Colors.white,
                    child:SizedBox(
                      height: 50,
                      width: 350,
                      child:Padding(
                        padding: EdgeInsets.only(top: 10,left:35),
                        child:
                        Text("Age: 22 ",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.white70,
                    color: Colors.white,
                    child:SizedBox(
                      height: 50,
                      width: 350,
                      child:Padding(
                        padding: EdgeInsets.only(top: 10,left:35),
                        child:
                        Text("Gender : Female",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Card(
                    elevation: 10,
                    shadowColor: Colors.white70,
                    color: Colors.white,
                    child:SizedBox(
                      height: 50,
                      width: 350,
                      child:Padding(
                        padding: EdgeInsets.only(top: 10,left:35),
                        child:
                        Text("Blood Group : O+",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    )
                ),
              ),


            ],

          ),


      ),


    );
  }
}
