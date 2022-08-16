import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/Slider/pages/slider.dart';
// import 'package:tameen_1/ui/Slider/pages/slider.dart';
// import 'package:tameen_1/Slider/pages/slider.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int x = 0;

  String? ValueChoose;

  List listItem = ['English', 'Arabic',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF134980),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Stack(alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      children: [
                        Text(
                          'Discover',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Excepteur sint occaecat cupidatat non proident,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('sunt in culpa qui officia deserunt ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    child: Image.asset("assets/images/Inserco222.png"),
                  ),
                  Positioned(
                    bottom: 140,
                    right: 50,
                    left: 50,
                    child: Container(
                      color: Colors.white,
                      height: 0.5,
                      // width: MediaQuery.of(context).size.width/1.3,
                    ),
                  ),

                  Positioned(
                    bottom: 50,
                    left: 20,
                    right: 20,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => slider()),
                          );
                          setState(() {
                            x = 1;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(8))),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: DropdownButton(
                                hint: Text('${listItem[0]}',style: TextStyle(fontWeight:FontWeight.bold,color:  Color(0XFF134980),),),
                                dropdownColor: Color.fromARGB(255, 255, 255, 255),
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0XFF134980),
                                ),
                                iconSize: 35,
                                isExpanded: true,
                                style: TextStyle(color:Color(0XFF134980), fontSize: 20,),
                                underline: SizedBox(),
                                value: ValueChoose,
                                onChanged: (newValue1) {
                                  setState(() {
                                    ValueChoose = newValue1 as String?;
                                  });
                                },
                                items: listItem.map((valueItem) {
                                  return DropdownMenuItem(
                                    value: valueItem,
                                    child: Text(valueItem),
                                  );
                                }).toList()),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
            SizedBox(height:MediaQuery.of(context).size.height/7,),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => slider()),
                  );
                },
                child: Container(
                  child: Text(
                    "LET’S START",
                    style: TextStyle(
                        color:  Color(0XFF2C71AE),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height/15,)


          ],
        ),
      ),
    );
  }
}
