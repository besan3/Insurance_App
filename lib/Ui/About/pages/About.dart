// import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
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
                    top: 15,
                    bottom: 15,
                    left: MediaQuery.of(context).size.width / 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "About Insurco",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),

              //Text
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20),
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("About Us About Us About Us "
                    "About UsAbout Us About Us About Us About "
                    "Us About Us About Us About Us About Us About"
                    " Us About Us About UsAbout Us About Us "),
              ),

              Container(
                margin: EdgeInsets.only(
                    top: 50,
                    bottom: 15,
                    left: MediaQuery.of(context).size.width / 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "If you need any assistance, feel free to contact us:",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),

              //Help
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Contact Us
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 3.3,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 10,
                              child: Icon(
                                Icons.phone,
                                color: Color(0XFF134980),
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 60,
                          ),
                          Container(
                            child: Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //FAQ`S
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 3.3,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 10,
                              child: Icon(
                                Icons.attach_money_sharp,
                                color: Color(0XFF134980),
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 60,
                          ),
                          Container(
                            child: Text(
                              "FAQ'S",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //Terms & Conditions
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 3.3,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 10,
                              child: Icon(
                                Icons.chat_rounded,
                                color: Color(0XFF134980),
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 60,
                          ),
                          Container(
                            child: Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black87),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //Follow Us
              Container(
                margin: EdgeInsets.only(
                    top: 50,
                    bottom: 15,
                    left: MediaQuery.of(context).size.width / 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Follow Us",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),

              //Follow Us Icons
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/images/fb_logo_img.png")
                    ),
                    SizedBox(width: 20,),
                    Container(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/images/insta_logo_s.png")
                    ),
                    SizedBox(width: 20,),
                    Container(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/images/inter_logo_s.png")
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
