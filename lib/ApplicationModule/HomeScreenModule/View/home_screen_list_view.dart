import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:workerszone/ApplicationModule/BidDetailModule/ViewController/bid_detail_view_controller.dart';
import 'package:workerszone/ApplicationModule/HomeScreenModule/View/hom_screen_job_view.dart';
import 'package:workerszone/ApplicationModule/HomeScreenModule/View/icons_verification_view.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
class ListViewView extends StatefulWidget {
  const ListViewView({Key? key}) : super(key: key);

  @override
  State<ListViewView> createState() => _ListViewViewState();
}

class _ListViewViewState extends State<ListViewView> {
  @override
  Widget build(BuildContext context) {

    return
      ListView.builder(
        physics: BouncingScrollPhysics(),

        itemCount:10,itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context,PageTransition(child: BidDetailController(), type: PageTransitionType.rightToLeft));
            },
            child: Container(height: 210,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1)
                  ]

              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20) ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height:35,
                              width: 35,
                              child:ClipOval(
                                child: Image.asset("assets/images/profilepic.jpg",fit: BoxFit.fill,),
                              ) ,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 8.0),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Imran Khan",style: TextStyle(fontSize: 20),),
                                  Text("Application Developer",style: TextStyle(fontSize: 10),)
                                ],
                              ),
                            ),

                          ],
                        ),
                        Column(
                          children: [

                            Text("Status",style: TextStyle(fontSize: 17),),
                            Text("Finished",style: TextStyle(fontSize: 10,color: Colors.greenAccent),)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      children: [

                        Text("Job Title : ",style: TextStyle(fontSize: 13),),
                        Text("Application Developer",style: TextStyle(fontSize: 10,color: defaultColor),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        JobDetailView(
                          title: "Job Cost",
                          subtitle: "200",

                        ),JobDetailView(
                          title: "Job Cost",
                          subtitle: "200",

                        ),JobDetailView(
                          title: "Job Cost",
                          subtitle: "200",

                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          VerificationView(

                          ),VerificationView(

                          ),VerificationView(

                          ),VerificationView(
                            backcolor: Colors.green,iconbackcolor: Colors.green,
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        );

      },);
  }
}
