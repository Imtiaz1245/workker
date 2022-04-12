import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/BidDetailModule/View/job_title_list_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/appbar_default2.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class BidDetailController extends StatefulWidget {
  const BidDetailController({Key? key}) : super(key: key);

  @override
  State<BidDetailController> createState() => _BidDetailControllerState();
}

class _BidDetailControllerState extends State<BidDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                DefaultAppBar2(
                  title: "Bid Details",
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.15,
                  width: MediaQuery.of(context).size.width*0.30,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profilepic.jpg"),

                ),),
                SizedBox(

                  height: MediaQuery.of(context).size.height*0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultTextStyleView(title: "Imran Khan"),
                    DefaultTextStyleView(title: "imran1245@gmail.com",textcolor: blackcolor,fontsize: 10.0),
                  ],
                ),
                SizedBox(

                  height: MediaQuery.of(context).size.height*0.06,
                ),
                JobTitleView(bidStatus: "Finished",bidstatuscolor: Colors.green,
                createdtime: "1/1/1999",deliverytime: "1/2/2000"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
