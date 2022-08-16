
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/Home/payment.dart';

import '../Widgets/drawer_model.dart';
import '../components.dart';
import '../constants.dart';
import 'Home/pages/home.dart';
class Register_Screen extends StatefulWidget {
  const Register_Screen({Key? key}) : super(key: key);

  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(drawer:Drawer_Model(),
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
      body:



      SafeArea(
       // minimum: EdgeInsets.all(10),
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


                SafeArea(minimum: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    Text('Ask for Your Insurance', style: TextStyle(color:primaryColor, fontWeight: FontWeight.bold,fontSize: 22),),
                      Components().defaultSizedBox(),
                      Components().defaultTextField('Name' ,Components().phoneConteoller,TextInputType.text ),
                      Components().defaultSizedBox(),
                      Components().defaultTextField('Email Address',Components().passwordConteoller,TextInputType.emailAddress),
                      Components().defaultSizedBox(),
                      Components().defaultTextField('Mobile Number' ,Components().phoneConteoller ,TextInputType.phone),
                      Components().defaultSizedBox(),
                      Components().defaultTextField('City',Components().passwordConteoller,TextInputType.text),
                      Components().defaultSizedBox(),
                      Components().defaultTextField('Address',Components().passwordConteoller,TextInputType.streetAddress),
                      Components().defaultSizedBox(),

                      InkWell(    onTap: (){
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register_Screen()),
                          );
                        });
                      },
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Motor
                           InkWell( onTap: (){
                             setState(() {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => home()),
                               );
                             });
                           },child: Text('Skip Now',style: TextStyle(color: greyColor,),)),
            InkWell( onTap: (){
              setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment_Screen()),
                  );
              });
            },child: Row(
              children: [
                  Text('Save & Continue',style:TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 16) ,),
                  IconButton(onPressed:(){},icon: Icon(Icons.arrow_forward,color: primaryColor))
              ],
            )),

                          ],
                        ),
                      ),


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

