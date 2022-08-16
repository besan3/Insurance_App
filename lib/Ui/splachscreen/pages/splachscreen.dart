
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:insurance/constants.dart';
// import 'package:tameen_1/chooselanguage/pages/ChooseLanguage.dart';

import '../../chooselanguage/pages/ChooseLanguage.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  void delay(){
    Future.delayed(Duration(milliseconds: 3000),() {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChooseLanguage()),
      );
    }
    );
  }

  void initState(){
    delay();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:primaryColor,
      body: SafeArea(
        child: Center(
          child: Container(
            child:  SvgPicture.asset(
                "assets/images/app_circle_logo.svg"
            )
          ),
        ),
      ),
    );
  }
}
