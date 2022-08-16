// import 'dart:html';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/NaveBar/pages/NaveBar.dart';
// import 'package:tameen_1/Ui/NaveBar/pages/NaveBar.dart';
// import 'package:tameen_1/Home/pages/home.dart';
// import 'package:tameen_1/NaveBar/pages/NaveBar.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  int s = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                s = index;
                print(index);
                print("s = $s");
              });
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height:MediaQuery.of(context).size.height/10,),

                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          (index == 0)
                              ? "Motor Insurance"
                              : (index == 1)
                              ? "Car"
                              : "Plan",
                          style: TextStyle(
                            color: Color(0xff0C3357),
                            fontSize: 22,
                          ),
                        ),
                      ),
                      SizedBox(height:20,),

                      Container(
                        padding: EdgeInsets.only(left: 33,right: 33),
                        alignment: Alignment.center,
                        child: Text(
                          (index == 0)
                              ? "Ut labore et dolore roipi mana aliqua. Enim adeop "

                              : (index == 1)
                              ? "Ut labore et dolore roipi mana aliqua. Enim adeop "
                              : "Ut labore et dolore roipi mana aliqua. Enim adeop ",
                          style: TextStyle(
                            color: Color(0xff0C3357),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 33,right: 33),
                        alignment: Alignment.center,
                        child: Text(
                          (index == 0)
                              ? "minim veeniam nostruklad"

                              : (index == 1)
                              ? " minim veeniam nostruklad"
                              : " minim veeniam nostruklad",
                          style: TextStyle(
                            color: Color(0xff0C3357),
                            fontSize: 12,
                          ),
                        ),
                      ),

                      SizedBox(height:MediaQuery.of(context).size.height/5.7,),

                      Container(
                        width: double.infinity,
                        child: Image.asset(

                            (index == 0)
                            ? "assets/images/image2.png"
                            : (index == 1)
                            ? "assets/images/image02.png"
                            : "assets/images/image3.png"),
                      ),

                    ],
                  ),
                ),
              );
            },
          ),
          //Three Dots
          Positioned(
            bottom: 80,
            child: Container(
              width: MediaQuery.of(context).size.width / 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    height: (s == 0) ? 15 : 12,
                    width: (s == 0) ? 15 : 12,
                    decoration: BoxDecoration(
                      color: (s == 0) ? Colors.white : Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    height: (s == 1) ? 15 : 12,
                    width: (s == 1) ? 15 : 12,
                    decoration: BoxDecoration(
                      color: (s == 1) ? Colors.white : Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    height: (s == 2) ? 15 : 12,
                    width: (s == 2) ? 15 : 12,
                    decoration: BoxDecoration(
                      color: (s == 2) ? Colors.white : Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Skip bottom
          Positioned(
            bottom: 50,
            right: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => navebar()),
                      );
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 75,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(0xff134980),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

        ]),
      ),
    );
  }
}
