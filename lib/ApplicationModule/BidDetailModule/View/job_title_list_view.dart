import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class JobTitleView extends StatelessWidget {
  final bidStatus, createdtime, deliverytime, bidstatuscolor;

  JobTitleView(
      {Key? key,
      this.bidStatus,
      this.createdtime,
      this.deliverytime,
      this.bidstatuscolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DefaultTextStyleView(
                      title: "Job Title: ", textcolor: blackcolor),
                  SizedBox(
                      width: 170.0,
                      child: DefaultTextStyleView(
                          title: "Prime Minister", fontsize: 17.0)),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(right: 8.0),
                child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: defaultColor, width: 2),
                  ),
                  child: Center(child: DefaultTextStyleView(title: "\$420")),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.018,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DefaultTextStyleView(
                      title: "Bid Status",
                      textcolor: blackcolor,
                      textheight: 1.5),
                  DefaultTextStyleView(
                      title: bidStatus,
                      textcolor: bidstatuscolor,
                      textheight: 1.5),
                ],
              ),
              Column(
                children: [
                  DefaultTextStyleView(
                      title: "Created Time",
                      textcolor: blackcolor,
                      textheight: 1.5),
                  DefaultTextStyleView(
                      title: createdtime,
                      textheight: 1.5,
                      textcolor: Colors.grey),
                ],
              ),
              Column(
                children: [
                  DefaultTextStyleView(
                      title: "Delivery Time",
                      textcolor: blackcolor,
                      textheight: 1.5),
                  DefaultTextStyleView(
                      title: deliverytime,
                      textheight: 1.5,
                      textcolor: Colors.grey),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.018,
          ),
          DefaultTextStyleView(title: "Description", textcolor: blackcolor),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.018,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTextStyleView(
                title: "gdsfjkfasdj sdgkn sdfkjh"
                    "sdjdg sdgbkjsdg dsgkjbgsda sdgjbk"
                    "sdgjkbsdgb sdgkbjdsg sdgkjbdgs"
                    "sdgkjbsdg sdgjbjksd dgjbsd jdg djkg dghsd sdg",
                textcolor: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.018,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.13,
                  width: MediaQuery.of(context).size.width / 3.8,
                  child: Image.asset("assets/images/mapimage.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.13,
                  width: MediaQuery.of(context).size.width / 3.8,
                  child: Image.asset("assets/images/mapimage.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Container(
height: MediaQuery.of(context).size.height*0.13,
                  width: MediaQuery.of(context).size.width / 3.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/mapimage.png")),
                  ),
                  child: Stack(
                    children: [Padding(
                      padding:  EdgeInsets.symmetric(vertical: 8.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.13,
                          width: MediaQuery.of(context).size.width / 3.5,
color: Colors.grey.withOpacity(0.7),
                          child: Center(child: DefaultTextStyleView(title: "+2",
                          textcolor: whitecolor,fontsize: 30.0)),


                        ),
                      ),
                    )],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
