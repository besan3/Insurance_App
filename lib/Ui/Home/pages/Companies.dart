
// import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/register.dart';
import 'package:insurance/constants.dart';

import '../../../Widgets/drawer_model.dart';

class Company extends StatefulWidget {
  const Company({Key? key}) : super(key: key);

  @override
  _CompanyState createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  int x = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer:Drawer_Model(),
    //  backgroundColor: Color(0XFF134980),
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
            children: [

              //AppBar
              Container(
             //   child: Image.asset("assets/images/Inserco2.png"),
                height: 20,
                width: MediaQuery.of(context).size.width/1,
                decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))
                ),
              ),

              //Top Text
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text("Insurance Companies",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),              //Cards
              //Top
              InkWell(    onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register_Screen()),
                  );
                });
              },
                child: Row(

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
                            color: primaryColor,
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
                            height: 60,
                            child: Image.asset("assets/images/download-removebg-preview.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text("العالمية المتحدة",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,fontSize: 16
                              ),
                            ),
                          )
                        ],
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
                            color: primaryColor,
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
                            height: 60,
                            child: Image.asset("assets/images/EOwEZ__1_-removebg-preview.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text("ضامن للتأمين ",
                              style: TextStyle(
                                  color:primaryColor,
                                  fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height/40,),

              //Bottom
              InkWell( onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register_Screen()),
                  );
                });
              },
                //                    assets/images/download__1_-removebg-preview.png
                child: Row(
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
                            color: primaryColor,
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
                            child: Image.asset("assets/images/download__1_-removebg-preview.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 40,),
                          Container(
                            child: Text("تمكين للتأمين",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16

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
                            color: primaryColor,
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
                            child: Image.asset("assets/images/download__3_-removebg-preview.png",fit: BoxFit.cover,),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Text("فلسطين للتأمين",
                              style: TextStyle(
                                  color:primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16

                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height/40,),

              // Page View
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/13),
                height:MediaQuery.of(context).size.height /5.5,
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (int index){
                      setState(() {

                      });
                    },
                    itemCount: 3,
                    itemBuilder: (context , index){
                      return Container(
                        margin: EdgeInsets.all(20),
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/dubai_economy_img.png"),
                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
