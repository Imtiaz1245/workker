import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/text_form_field_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/appbar_default2.dart';
import 'package:workerszone/ApplicationModule/Utills/Buttons/button_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class PostBidController extends StatefulWidget {
  const PostBidController({Key? key}) : super(key: key);

  @override
  State<PostBidController> createState() => _PostBidControllerState();
}

class _PostBidControllerState extends State<PostBidController> {
  var selectedbuisness, startdate, enddate;
  bool  isEndDate=false,
  isStartDate=false;

  var buisness = {
    "account holder",
    "watchman",
    "mobile shop",
    "airport Security",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: CustomHeight(context) * 0.01,
            ),
            DefaultAppBar2(
              title: "Post Your Bid",
            ),
            SizedBox(height: CustomHeight(context) * 0.009),
            Center(
              child: SizedBox(
                height: CustomHeight(context) * 0.25,
                width: 200,
                child: Image.asset("assets/images/biddetailpic.png"),

              ),
            ),
            SizedBox(
              height: CustomHeight(context) * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: DefaultTextStyleView(title: "Select Service Type"),
                  ),
                  DropdownButton(
                    value: selectedbuisness,
                    isExpanded: true,
                    hint: Text("Select Service Type"),
                    items: buisness.map((location) {
                      return DropdownMenuItem(
                        child: Text(location),
                        value: location,
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedbuisness = newValue!;
                      });
                    },
                  ),
                  SizedBox(
                    height: CustomHeight(context) * 0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: DefaultTextStyleView(title: "Start Date"),
                  ),
                  InkWell(
                    onTap: () async{


                     final date=await  showDatePicker(
                           context: context,
                           initialDate: DateTime.now(),
                           firstDate: DateTime(2001),
                           lastDate: DateTime(2099));
                       setState(() {
                         final startD=date;
                         startdate=startD.toString().substring(0,10);
                         isStartDate=true;
                       });

                                     },
                    child: SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          isStartDate == true ? Text(startdate) : SizedBox(),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: CustomHeight(context) * 0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: DefaultTextStyleView(title: "End Date"),
                  ),
                  InkWell(
                    onTap: () async{


                      final date=await  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2001),
                          lastDate: DateTime(2099));
                      setState(() {
                        final EndD=date;
                        enddate=EndD.toString().substring(0,10);
                        isEndDate=true;
                      });

                    },
                    child: SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          isEndDate == true ? Text(enddate) : SizedBox(),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: CustomHeight(context) * 0.03,
                  ),
                  DefaultTextStyleView(title: "JOB BUDGET", fontsize: 18.0),
                  SizedBox(
                    height: CustomHeight(context) * 0.01,
                  ),
                  DefaultTextStyleView(
                      title: "   Your Earning after WORKERLOT detection",
                      fontsize: 10.0,
                      textcolor: Colors.grey),
                  SizedBox(
                    height: CustomHeight(context) * 0.01,
                  ),
                  DefaultTextStyleView(title: "BUDGET", fontsize: 18.0),
                  SizedBox(
                    height: CustomHeight(context) * 0.015,
                  ),
                  DefaultButtonController(
                    height: CustomHeight(context) * 0.075,
                    width: CustomHeight(context),
                    buttoncolor: defaultColor,
                    shape: 10.0,
                    text: "SUBMIT BID",
                    onpress: () {},
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
