
// import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insurance/Ui/Home/pages/Companies.dart';
import 'package:insurance/Ui/NaveBar/pages/NaveBar.dart';
import 'package:insurance/components.dart';
import 'package:insurance/constants.dart';

import '../../../Widgets/drawer_model.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int x = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: navebar(),
      backgroundColor: Colors.white,
      drawer:Drawer_Model(),
      appBar: AppBar(
        backgroundColor: Color(0xff0C3357),
        elevation: 0,
        title:Center(child: Image.asset('assets/images/Inserco2.png',height:100,width:100,)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications),
          )
        ],
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [
                  //AppBar
                  Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width/1,
                    decoration: const BoxDecoration(
                        color: Color(0xff0C3357),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset('assets/images/profile.png'),
                  )

                ],
              ),
              SizedBox(height:15,),

              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text('Categories ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff0C3357)),),
              ),

              SizedBox(height:20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Motor
                  Container(
                    height: MediaQuery.of(context).size.height/4.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 2,
                          )
                        ]

                    ),
                    child: InkWell(  onTap: (){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Company()),
                        );
                      });
                    },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/images/mansion (1).png"),
                          ),
                          SizedBox(height:5,),
                          Container(
                            child: Text("Home Insurance",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width/20,),

                  //Health
                  Container(
                    height: MediaQuery.of(context).size.height/4.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 2,
                          )
                        ]

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("assets/images/mansion2 (1).png"),
                        ),
                        SizedBox(
                          height:1,
                        ),
                        Container(
                          child: Text("Life Insurance",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height/40,),

              //Bottom
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Life
                  Container(
                    height: MediaQuery.of(context).size.height/4.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 2,
                          )
                        ]

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("assets/images/mansion3 (1).png"),
                        ),
                        SizedBox(height: 1,),
                        Container(
                          child: Text("Vehicle Insurance ",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width/20,),

                  //Travel
                  Container(
                    height: MediaQuery.of(context).size.height/4.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 2,
                          )
                        ]

                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("assets/images/flight (1).png"),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                          child: Text("Travel Incurance",
                            style: TextStyle(
                                color:primaryColor,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),

                  ),
                ],
              ),





            ],
          ),
        ),
      ),
    );
  }
}
