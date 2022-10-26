

import 'package:flutter/material.dart';

class Dermatologist extends StatefulWidget {
  const Dermatologist({Key? key}) : super(key: key);

  @override
  _DermatologistState createState() => _DermatologistState();
}

class _DermatologistState extends State<Dermatologist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
          backgroundColor: Colors.teal[700],
          centerTitle: true,
          title: Text(
            'DERMATOLOGISTS',
            style: TextStyle(
              letterSpacing: 2,
              fontSize:20,
              fontFamily: 'Roboto',
            ),
      )),
      body: Container(
        margin: EdgeInsets.only(top:10,right:5,left:5),
        child:ListView(
          scrollDirection: Axis.vertical,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child:Doctors("https://cdn-icons-png.flaticon.com/512/2762/2762765.png","Dr.Verma","Dermatologist","4.0","5 Years"),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child:Doctors("https://cdn-icons-png.flaticon.com/512/2762/2762765.png","Dr.Verma","Dermatologist","4.0","5 Years"),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child:Doctors("https://cdn-icons-png.flaticon.com/512/2762/2762765.png","Dr.Verma","Dermatologist","4.0","5 Years"),
                  ),
                ],
              ),
        ),

    );
  }
}

Widget Doctors(String image, String name, String speciality, String rating,String experience){
  // return Container(
  //   height: 150,
  //   color: Colors.white,
  //
  // );
  return  Container(
    margin: EdgeInsets.only(top:10),
    height: 160,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left:10),
          child: Image.network(image),
        ),
        Container(
          margin: EdgeInsets.symmetric(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top:20),
                child: Text(
                  name,
                  style:TextStyle(
                    color: Color(0xff363636),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      speciality,
                      style: TextStyle(
                        color:Colors.teal,
                        fontFamily: 'Roboto',
                        fontSize:16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              "Rating: ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              rating,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:10),
                      child:Text(
                        experience,
                        style: TextStyle(
                          color:Colors.teal,
                          fontFamily: 'Roboto',
                          fontSize:16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}