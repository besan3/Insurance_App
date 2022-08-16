
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/Home/pages/home.dart';
import '../../Widgets/button_style.dart';
import '../../components.dart';
import '../../constants.dart';
class Sign_Up_Screen extends StatefulWidget {
  const Sign_Up_Screen({Key? key}) : super(key: key);

  @override
  _Sign_Up_ScreenState createState() => _Sign_Up_ScreenState();
}

class _Sign_Up_ScreenState extends State<Sign_Up_Screen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xff0C3357),
          elevation: 0,
          title:Center(child: Image.asset('assets/images/Inserco2.png',height:100,width:100,)),

        ),      body:



      SafeArea(
      //  minimum: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
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

                Components().defaultSizedBox(),

                Container(
                  //     width: 200,
                    height: 100,
                    child:Image(
                      image:ExactAssetImage('assets/images/app_circle_logo.png'),fit: BoxFit.cover,)
                ),
                Components().defaultSizedBox(),

                SafeArea(minimum: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    Text('Wellcome Back  !', style: TextStyle(color:primaryColor, fontWeight: FontWeight.bold,fontSize: 22),),
                      Components().defaultSizedBox(),
                      Components().defaultTextField('Email Address' ,Components().phoneConteoller,TextInputType.emailAddress ),
                      Components().defaultSizedBox(),
                      Components().defaultTextField('Password ',Components().passwordConteoller,TextInputType.visiblePassword),
                      Components().defaultSizedBox(),

                      Components().defaultTextField('Confirm Password ',Components().passwordConteoller,TextInputType.visiblePassword),
                      SizedBox(
                        height: 20,
                      ),

                      Components().defaultSizedBox(),

                      Button_Style(signText: 'Sign up',pageToShow:
                     home(),)

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

