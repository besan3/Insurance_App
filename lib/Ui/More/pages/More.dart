import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/Login/pages/Login_1.dart';
// import 'package:tameen_1/ui/Login/pages/Login_1.dart';
// import 'package:tameen_1/Login/pages/Login_1.dart';



class more extends StatefulWidget {
  const more({Key? key}) : super(key: key);

  @override
  _moreState createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF134980),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //AppBar
              Container(
                child: Image.asset("assets/images/Inserco 1.png"),
                height: 60,
                width: MediaQuery.of(context).size.width / 1,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),

              //Top Text
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height/20,
                    left: MediaQuery.of(context).size.width / 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "More",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),

              //More
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20, vertical: 25),
                width: MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(7))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //FAQ'S
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height/20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("FAQ'S",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                          ],
                        ),
                        ),
                    ),
                    Container(height: 0.5, color: Colors.grey,),
                    //Contact Us
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height/20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Contact Us",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                          ],
                        ),
                        ),
                    ),
                    Container(height: 0.5, color: Colors.grey,),
                    //Terms & Conditions
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height/20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Terms & Conditions",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                          ],
                        ),
                        ),
                    ),
                    Container(height: 0.5, color: Colors.grey,),
                    //Language
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height/20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Language",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)
                          ],
                        ),
                        ),
                    ),
                  ],
                ),
              ),

              //End
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Login
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login_1())
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Color(0XFF2C71AE),
                            borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height/18,
                        child: Row(
                          children: [
                            Icon(Icons.power_settings_new,color: Colors.white,size: 15,),
                            SizedBox(width: 10,),
                            Text("LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                        ),
                    ),
                    SizedBox( height: 15),
                    //Order tracking
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Color(0XFF2C71AE),
                            borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height/18,
                        child: Row(
                          children: [
                            Icon(Icons.track_changes,color: Colors.white,size: 15,),
                            SizedBox(width: 10,),
                            Text("Order tracking",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                        ),
                    ),
                    SizedBox( height: 15),
                    //Company
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Color(0XFF2C71AE),
                            borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        height: MediaQuery.of(context).size.height/18,
                        child: Row(
                          children: [
                            Icon(Icons.list,color: Colors.white,size: 15,),
                            SizedBox(width: 10,),
                            Text("Company",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                        ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
