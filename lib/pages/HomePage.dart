import 'package:flutter/material.dart';
import 'package:doctor_g/pages/DoctorDetailPage.dart';
import 'package:doctor_g/utils/Routes.dart';
import 'package:doctor_g/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    // print(category);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text('Doctor'),
        // leading: IconButton(
        //   onPressed:(){},
        //   // icon:const Icon(Icons.menu),
        // ),
        actions: [
          GestureDetector(
            child: Container(
              margin:new EdgeInsets.only(right:25),
              child:Icon(
                //margin:EdgeInsets.only(right: 10),
                Icons.notification_important,
                color: Colors.white,

              ),
            ),
          ),
          GestureDetector(
            child:InkWell(
              onTap: (){
                Navigator.pushNamed(context, Routes.userProfileRoute);
              },
             child:  Container(
               margin:new EdgeInsets.only(right:15),
               child:Icon(
                 Icons.person,
                 color: Colors.white,
               ),
             ),
            ),
          ),
        ],
      ),
      body:
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Hi, User",
                style:TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 20, right: 20),
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    offset: Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        maxLines: 1,
                        autofocus: false,
                        style: TextStyle(color: Color(0xff107163), fontSize: 20),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search..',
                        ),
                        cursorColor: Color(0xff107163),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff107163),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width:size.width ,
              margin: EdgeInsets.only(top:20,left:20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      "Category",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 1),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff5e5d5d),
                          fontSize: 19,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.dermatologistRoute);
                    },
                    child: demoCategories("https://cdn-icons-png.flaticon.com/512/2762/2762765.png","Dermatologist"),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.dermatologistRoute);
                    },
                    child:demoCategories("https://cdn-icons-png.flaticon.com/512/2864/2864294.png","Cardiologist"),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.dermatologistRoute);
                    },
                    child:demoCategories("https://cdn-icons-png.flaticon.com/512/607/607414.png","Physician"),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.dermatologistRoute);
                    },
                    child:demoCategories("https://cdn-icons-png.flaticon.com/512/1822/1822987.png","Homeopathic "),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.dermatologistRoute);
                    },
                    child: demoCategories("https://cdn-icons-png.flaticon.com/512/966/966044.png","Orthopedic"),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.dermatologistRoute);
                    },
                    child: demoCategories("https://cdn-icons-png.flaticon.com/512/882/882998.png","Neurologists"),
                  ),

                ],
              ),
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      'Available Specialists',
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 1),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff5e5d5d),
                          fontSize: 19,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index){
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.doctorProfileRoute);
                          },
                        child: Container(
                          height: 120,
                          // width: size.width,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Image.network("https://cdn-icons-png.flaticon.com/512/607/607414.png"),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Dr.Prachi Verma",
                                        style: TextStyle(
                                          color: Color(0xff363636),
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Cardiologist",
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
                                                    "5.0",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  // children: [
                  //   GestureDetector(
                  //     onTap: (){
                  //       Navigator.pushNamed(context, Routes.doctorProfileRoute);
                  //     },
                  //     child: demoTopRatedDr(
                  //       "https://cdn-icons-png.flaticon.com/512/2785/2785482.png",
                  //       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",
                  //       "Dr. Fred Mask",
                  //       "Heart surgen",
                  //       "4.1",
                  //     ),
                  //   ),

                ),
              ),
            ),

          ],

        ),
      ),
      drawer: MyDrawer(),
    );
  }
}






Widget demoCategories(String image,String name){

  return Container(
    width: 110,
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      color: Color(0xff107163),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image.network(image,width:50,height: 55,),

        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

      ],
    ),
  );
}


// Widget demoTopRatedDr(String img, String name, String speciality, String rating) {
//   // var size = MediaQuery.of(context).size;
//   return GestureDetector(
//     // onTap: () {
//     //   Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetailPage()));
//     // },
//     child: Container(
//       height: 120,
//       // width: size.width,
//       margin: EdgeInsets.only(top: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: 20),
//             child: Image.network(img),
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 20, top: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: 10),
//                   child: Text(
//                     name,
//                     style: TextStyle(
//                       color: Color(0xff363636),
//                       fontSize: 20,
//                       fontFamily: 'Roboto',
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 10),
//                   child: Column(
//                     children: [
//                       Text(
//                         speciality,
//                         style: TextStyle(
//                           color:Colors.teal,
//                           fontFamily: 'Roboto',
//                           fontSize:16,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(top: 3),
//                         child: Row(
//                           children: [
//                             Container(
//                               child: Text(
//                                 "Rating: ",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontFamily: 'Roboto',
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Text(
//                                 rating,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontFamily: 'Roboto',
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }


