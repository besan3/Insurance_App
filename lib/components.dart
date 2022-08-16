import 'package:flutter/material.dart';
import 'package:insurance/constants.dart';

class Components{

  TextEditingController phoneConteoller=TextEditingController();
  TextEditingController passwordConteoller=TextEditingController();

  Widget defaultTextField(String hintText,TextEditingController controller, TextInputType text){

    return Material(elevation: 2,borderRadius:BorderRadius.circular(60),
      child:   TextField(

        decoration: InputDecoration(
            prefix: SizedBox(width: 5,),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),

            hintText:  hintText,
            hintStyle:
            TextStyle(color: Color(0xffE5D7D7), fontSize: 16),hoverColor:  Color(
            0xff6f76bb),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.solid, color:  primaryColor),
                borderRadius: BorderRadius.circular(60))
        ),//keyboardType: TextInputType?.text,
        cursorColor: primaryColor,

      ),
    );
  }

 Widget defaultSizedBox(){
   return SizedBox(
     height: 30,
   );
 }
  Widget companyIcon(String coImage,String coName, BuildContext context){
    return                    Container(
      height: MediaQuery.of(context).size.height/4.5,
      width: MediaQuery.of(context).size.width/2.5,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(coImage,fit: BoxFit.cover,),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text(coName,
                style: TextStyle(
                    color: Color(0XFF134980),
                    fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    )

    ;
  }}




