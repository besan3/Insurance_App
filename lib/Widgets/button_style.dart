import 'package:flutter/material.dart';
import 'package:insurance/constants.dart';


class Button_Style extends StatelessWidget {

  Button_Style({Key? key,
    this.signText,
this.pageToShow,
    this.color=primaryColor,
    this.size=20
  }) : super(key: key,);


  Color? color;
  double size;
  final String? signText;
  final Widget? pageToShow;
  @override
  Widget build(BuildContext context) {

    return        Material(

      color: color,

      elevation: 2,shadowColor: Colors.blueGrey,
      borderRadius: BorderRadius.circular(size),

      child: TextButton(onPressed: () {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>pageToShow!),
        );

      },
        child: Center(child: Text(signText!,style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: size))),
      ),
    );
  }
}
