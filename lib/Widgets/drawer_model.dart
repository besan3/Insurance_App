
import 'package:flutter/material.dart';
import 'package:insurance/Ui/About/pages/About.dart';
import 'package:insurance/Ui/NaveBar/pages/NaveBar.dart';
import 'package:insurance/Ui/register.dart';
import '../Ui/Home/pages/home.dart';
import '../Ui/Login/sign_screen.dart';
import '../constants.dart';

class Drawer_Model extends StatefulWidget {
  const Drawer_Model({Key? key}) : super(key: key);

  @override
  _Drawer_ModelState createState() => _Drawer_ModelState();
}

class _Drawer_ModelState extends State<Drawer_Model> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Center(
              child: Text(
                'Insurance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(

            leading: Icon(Icons.home,color: primaryColor,),
            title: Text('Home'), onTap:  () {
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => navebar()));
          },),
          ListTile(
            leading: Icon(Icons.app_registration,color: primaryColor),
            title: Text('Apply to Insurance'),
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Register_Screen()));
            },
          ), ListTile(
            leading: Icon(Icons.announcement,color: primaryColor),
            title: Text('About'),
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => about()));
            },
          ),

          ListTile(
            leading: Icon(Icons.login,color: primaryColor),
            title: Text('Sign in'),
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Sign_In_Screen()));
            },
          ),

         /* ListTile(
            leading:
            Icon(Icons.shopping_cart),
            title: Text('History'),
            onTap:  () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => History()));
            },
          ),

          *//*ListTile(
            leading: Icon(Icons.call),
            title: Text('Apply to Insurance '),
          ),*//*

          ListTile(
            leading: Icon(Icons.logout),
            title: Text('تسجيل الخروج'),
          ),*/
        ],
      ),
    );
  }
}
