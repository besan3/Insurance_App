import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/Login/pages/Login_1.dart';
import 'package:insurance/Ui/NaveBar/pages/NaveBar.dart';
// import 'package:tameen_1/ui/Home/pages/home.dart';
// import 'package:tameen_1/ui/Login/pages/Login_1.dart';
// import 'package:tameen_1/ui/NaveBar/pages/NaveBar.dart';

class login_2 extends StatefulWidget {
  const login_2({Key? key}) : super(key: key);

  @override
  _login_2State createState() => _login_2State();
}

class _login_2State extends State<login_2> {
  var i = 1;
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
                              print(i);
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

              // Information
              Container(
                // padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                    vertical: 15),
                height: MediaQuery.of(context).size.height / 1.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: SingleChildScrollView(
                  dragStartBehavior: DragStartBehavior.down,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //OwnerShip
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                            top: MediaQuery.of(context).size.width / 20,),
                          decoration: (
                              BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upload OwnerShip"),
                              Icon(
                                Icons.add_box,
                                color: Colors.green,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),

              //Submint
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => navebar())
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
                  child: Text("Submit",
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
                          builder: (context) => login_1())
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
