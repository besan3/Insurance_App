import 'package:flutter/material.dart';
import 'package:insurance/Ui/Login_2/pages/Login_2.dart';
import 'package:insurance/Ui/More/pages/More.dart';
// import 'package:tameen_1/ui/Login_2/pages/Login_2.dart';
// import 'package:tameen_1/ui/More/pages/More.dart';

class login_1 extends StatefulWidget {
  const login_1({Key? key}) : super(key: key);

  @override
  _login_1State createState() => _login_1State();
}

class _login_1State extends State<login_1> {
  var i = 0;
  var t = 0;
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
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                        left: MediaQuery.of(context).size.width / 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Inquiry Form",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                        left: MediaQuery.of(context).size.width / 6),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login_1()));
                            setState(() {
                              i = 0;
                            });
                          },
                          child: Icon(
                            Icons.looks_one_outlined,
                            color: (i == 0) ? Colors.white : Colors.grey,
                            size: (i == 0) ? 35 : 25,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login_2()));
                            setState(() {
                              i = 1;
                            });
                          },
                          child: Icon(
                            Icons.looks_two_outlined,
                            color: (i == 1) ? Colors.white : Colors.grey,
                            size: (i == 1) ? 35 : 25,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              //Information
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 15),
                height: MediaQuery.of(context).size.height/1.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //Full Name
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Full Name",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),

                    //Phone Number
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Phone Number",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),

                    //Email
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),

                    //Choose Type
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 30 ),
                      child: Text("Choose the type of insurance",
                        style: TextStyle(
                            color: Color(0XFF134980),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    //Tow Type
                    Row(
                      children: [
                        //comperhensive
                        InkWell(
                          onTap: (){
                            setState(() {
                              t=1;
                              print(t);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 20 ),
                            height: MediaQuery.of(context).size.height/20,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                                color: Color((t==1)?0XFF134980:0XFFFFFFFF),
                                border: Border.all(width: 2,color: Color(0XFF134980)),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Text("comperhensive",
                              style: TextStyle(
                                  color: Color((t==1)?0XFFFFFFFF:0XFF134980),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        //Third Party
                        InkWell(
                          onTap: (){
                            setState(() {
                              t=2;
                              print(t);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 20 ),
                            height: MediaQuery.of(context).size.height/20,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                                color: Color((t==2)?0XFF134980:0XFFFFFFFF),
                                border: Border.all(width: 2,color: Color(0XFF134980)),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Text("Third Party",
                              style: TextStyle(
                                  color: Color((t==2)?0XFFFFFFFF:0XFF134980),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),

              //Submint
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => login_2())
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 20,
                      vertical: 10),
                  height: MediaQuery.of(context).size.height / 18,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text("Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => more())
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 20,
                      vertical: 5),
                  height: MediaQuery.of(context).size.height / 18,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text("back",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
