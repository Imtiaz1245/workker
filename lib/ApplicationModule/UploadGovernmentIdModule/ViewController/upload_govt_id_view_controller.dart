import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/UploadGovernmentIdModule/View/id_view.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class UploadGovtId extends StatefulWidget {
  const UploadGovtId({Key? key}) : super(key: key);

  @override
  State<UploadGovtId> createState() => _UploadGovtIdState();
}

class _UploadGovtIdState extends State<UploadGovtId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    IdView(),
    SizedBox(
      height: CustomHeight(context)*0.05,

    ),
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 35.0,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyleView(title: "Your Recent Uploads",fontsize: 20.0),
          SizedBox(
            height: CustomHeight(context)*0.01,

          ),
          Row(
            children: [
              SizedBox(
                height:33.0,
                width: 35.0,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.check,color: Colors.white,size: 35,),
                ),
              ),
              DefaultTextStyleView(title: "   Your Recent Uploads",fontsize: 15.0,textcolor: blackcolor),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(
                height:33.0,
                width: 35.0,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.check,color: Colors.white,size: 35,),
                ),
              ),
              DefaultTextStyleView(title: "   Your Recent Uploads",fontsize: 15.0,textcolor: blackcolor),

            ],
          )
        ],
      ),
    ),


  ],
),
      )),
    );
  }
}
