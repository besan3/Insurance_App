

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/About/pages/About.dart';
import 'package:insurance/Ui/Home/pages/Companies.dart';
import 'package:insurance/Ui/Home/pages/home.dart';
import 'package:insurance/Ui/Home/payment.dart';
import 'package:insurance/Ui/More/pages/More.dart';
import 'package:insurance/Ui/register.dart';
import 'package:insurance/constants.dart';
// import 'package:tameen_1/About/pages/About.dart';
// import 'package:tameen_1/Home/pages/home.dart';
// import 'package:tameen_1/More/pages/More.dart';
// import 'package:tameen_1/Setting/pages/Setting.dart';
// import 'package:tameen_1/Ui/Home/pages/home.dart';
// import 'package:tameen_1/Ui/More/pages/More.dart';
// import 'package:tameen_1/ui/About/pages/About.dart';



class navebar extends StatefulWidget {
  const navebar({Key? key}) : super(key: key);

  @override
  _navebarState createState() => _navebarState();
}


class _navebarState extends State<navebar> {

  int _currentIndex = 1 ;

  List<Widget> _widgetOptions = <Widget>[
    about(),
    home(),
    more(),
    Company(),
    Register_Screen(),
    Payment_Screen()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.app_blocking_outlined, title: 'About'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.settings, title: 'More'),
          ],
          initialActiveIndex: _currentIndex,
          onTap: (value){
            setState(() {
              _currentIndex = value;
            });
          },
          backgroundColor: Colors.white,
          activeColor:primaryColor,
          color: Color(0XFF134980),
          // onTap: (int i) => print('click index=$i'),//optional, default as 0
        )
    );
  }
}

