import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        centerTitle: true,
        title: Text("Specialist",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      bottomSheet:GestureDetector(
        onTap: (){
          //Navigator.pushNamed(context, Routes.imageUploadRoute);
        },
        child:  Container(
          height: 70,
          width: double.infinity,
          child: Container(
            color: Colors.teal[200],
            child:Center(
              child: Text("Book Appointment",
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
      body:Container(
        child: Column(
          children: [
            Container(
              child:Image.network("https://cdn-icons-png.flaticon.com/512/607/607414.png",height:250,),
            ),
            Container(
                child: Row(
                    children: [
                      Expanded(
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(color: Colors.teal),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () => {},
                          icon: Icon(Icons.call,
                            color: Colors.teal,
                          ),
                          label: Text('Voice call',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child:TextButton.icon(
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(color: Colors.teal),
                            backgroundColor: Colors.teal,
                          ),
                          onPressed: () => {},
                          icon: Icon(Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                          label: Text('Video call',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child:TextButton.icon(
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(color: Colors.teal),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () => {},
                            icon: Icon(Icons.call,
                              color: Colors.teal,
                            ),
                            label: Text('Message',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 18
                              ),
                            ),
                          ),
                      ),

                    ],
                  ),
              ),


            Column(
                children: [
                  Text("Dr.PRACHI VERMA",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Cardiologist",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text("Ambey Homeopathy Clinic",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text("B.H.M.S , M.D",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize:18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\nAbout Doctor",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Dr.Prachi verma, have completed a 9 yr medical practice . She is a very good doctor. please aa jao paise chaiye mujhe .",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
