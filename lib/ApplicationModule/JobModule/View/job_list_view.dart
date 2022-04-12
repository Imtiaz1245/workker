import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/PostBidModule/ViewController/post_bid_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Buttons/button_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class JobListViewView2 extends StatefulWidget {
  const JobListViewView2({Key? key}) : super(key: key);

  @override
  State<JobListViewView2> createState() => _JobListViewView2State();
}

class _JobListViewView2State extends State<JobListViewView2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 1),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: ClipOval(
                        child: Image.asset("assets/images/profilepic.jpg"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            DefaultTextStyleView(
                                title: 'Job : ',
                                textheight: 1.5,
                                fontsize: 13.0,
                                textcolor: blackcolor),
                            Container(
                              width: 100,
                              child: DefaultTextStyleView(
                                title: 'Flutter Developer',
                                textheight: 1.5,
                                fontsize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DefaultTextStyleView(
                                title: 'DeadLine: ',
                                textheight: 1.5,
                                fontsize: 13.0,
                                textcolor: blackcolor),
                            DefaultTextStyleView(
                              title: '2/2/2020',
                              textheight: 1.5,
                              fontsize: 10.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            DefaultTextStyleView(
                                title: 'Type: ',
                                textheight: 1.5,
                                fontsize: 13.0,
                                textcolor: blackcolor),
                            DefaultTextStyleView(
                              title: 'Developer',
                              textheight: 1.5,
                              fontsize: 10.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    DefaultButtonController(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 45.0,
                      textcolor: whitecolor,
                      shape: 10.0,
                      buttoncolor: defaultColor,
                      onpress: () {
                        CustomNavigator(context, PostBidController());
                      },
                      text: "Bid Now",
                      fontsize: 12.0,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
