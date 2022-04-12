import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/appbar_default2.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class NotificationController extends StatefulWidget {
  const NotificationController({Key? key}) : super(key: key);

  @override
  State<NotificationController> createState() => _NotificationControllerState();
}

class _NotificationControllerState extends State<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,

child: Column(
  children: [
    SizedBox(height: 20,),
    DefaultAppBar2(title: "Notifications",),
    SizedBox(height: 20,),
    Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
  color: Colors.white,
borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 1,
    )
  ]
),         
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height:50,
                  width: 50,
                  child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profilepic.jpg",),

                  ),
                ),
                SizedBox(width: 20,),

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   DefaultTextStyleView(title: "Imtiaz@Gmail.com",textheight: 1.0,fontsize: 15.0,textcolor: blackcolor) ,
                   DefaultTextStyleView(title: "Imtiaz@Gmail.com",textheight: 1.5,fontsize: 12.0,textcolor: blackcolor) ,
                  ],
                ),
              ],
            ),
          ),
          ),
        );
      },),
    )
  ],
),          )
      ),
    );
  }
}
