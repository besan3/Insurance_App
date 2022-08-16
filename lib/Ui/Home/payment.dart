import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance/Ui/Home/pages/home.dart';
import 'package:insurance/Widgets/button_style.dart';
import 'package:insurance/Widgets/drawer_model.dart';
import 'package:insurance/components.dart';
import 'package:insurance/constants.dart';

class Payment_Screen extends StatefulWidget {
  const Payment_Screen({Key? key}) : super(key: key);

  @override
  State<Payment_Screen> createState() => _Payment_ScreenState();
}

class _Payment_ScreenState extends State<Payment_Screen> {
  void_showSheetMessage(context){
    showModalBottomSheet(context: context, builder: (BuildContext bc){
      return Container(child: ListView(children: [
        Column(children: [SizedBox(height: 30,),
          Text('Done Successfully',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: primaryColor),),SizedBox(height: 30,),
          Container(
              decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color:primaryColor,width: 2)),
              child: Icon(Icons.done,size: 100,color: Color(0xffEEA74C),)),



        ],)
      ],),);
    });
  }

  final _formKey=GlobalKey<FormState>();

  List<String> _collections=[
'cash','paybal',
  ];

  String? dropdownvalue;

  var phoneController=TextEditingController();

  var pswController=TextEditingController();

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Complete your insurance information.',style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold,fontSize: 24), ),
              ),
              Components().defaultSizedBox(),
              Components().defaultSizedBox(),
              Text('Payment info.',style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold,fontSize: 24), ),
              Components().defaultSizedBox(),
              SizedBox(width: 18,),
              Center(
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: DropdownButton<String>(hint:
                  Text( 'Payment methode', style:  TextStyle(color: Color(0xffE5D7D7), fontSize: 16),

                  ),
                    value:dropdownvalue ,
                    icon: Icon(Icons.arrow_drop_down,color: primaryColor,),
                    onChanged: (String? value){
                      setState(() {
                        dropdownvalue=value;
                      });
                    },
                    items: _collections.map<DropdownMenuItem<String>>((String? value){
                      return DropdownMenuItem<String>(value:value,
                          child:Text(value??'',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),));
                    }).toList(),),
                ),
              ),
              Components().defaultSizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Components().defaultTextField('account no.',Components().phoneConteoller,TextInputType.number),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Components().defaultTextField('password',Components().passwordConteoller,TextInputType.visiblePassword),
              ),
              Components().defaultSizedBox(),
              Components().defaultSizedBox(),

              Container(width: 150,
                height: 40,

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                    ),
                    onPressed: ()=>void_showSheetMessage(context), child: Text('Apply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
