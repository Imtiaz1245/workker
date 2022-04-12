import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/HomeScreenModule/View/home_screen_list_view.dart';
import 'package:workerszone/ApplicationModule/JobModule/ViewController/all_jobs_view_controller.dart';
import 'package:workerszone/ApplicationModule/NotificationModule/ViewController/notification_view_controller.dart';
import 'package:workerszone/ApplicationModule/ProfileModule/ViewController/profile_edit_view_controller.dart';
import 'package:workerszone/ApplicationModule/ProfileModule/ViewController/profile_view_controller.dart';
import 'package:workerszone/ApplicationModule/ResetPasswordModule/ViewController/reset_password_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/default_appbar.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class BottomAppBarCoontroller extends StatefulWidget {
  final zoomController;

  const BottomAppBarCoontroller({Key? key, this.zoomController}) : super(key: key);


  @override
  State<BottomAppBarCoontroller> createState() => _HomeScreenControllerState();
}

class _HomeScreenControllerState extends State<BottomAppBarCoontroller> with TickerProviderStateMixin{
  int currentindex=0;
  var currentScreen;
  bool screen=false;

  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 5, vsync: this);

    var height=MediaQuery.of(context).size.height,
      width= MediaQuery.of(context).size.width;
    return WillPopScope(


      onWillPop: ()async {
    if(currentindex==0)
      {
        screen=false;
      }
    else{
setState(() {

  currentindex=0;
  screen=false;
});
    }

          return screen;

      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(

          child: Container(
            height: height,
            width:width,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

              Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: MediaQuery.of(context).size.height*0.12,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween
                  ,
                  children: [
                    SizedBox(width: 40,),
                    Padding(
                      padding:  EdgeInsets.only(top: 15.0),
                      child: Column(
                        children: [
                          DefaultTextStyleView(title: 'Workers',
                              fontsize: 30.0,
                              fontfamily: "poppins"
                          ),
                          DefaultTextStyleView(title: 'Zone',
                            fontsize: 25.0,
                            fontfamily: "poppinsregular",
                            textcolor: blackcolor,
                          ),
                        ],
                      ),
                    ),
                    IconButton(onPressed:(){
                      CustomNavigator(context, NotificationController());
                    },icon: Icon(Icons.notification_important_outlined,color: defaultColor,)),
                  ],
                ),
              ),
            ),
                  SizedBox(
                    height: 10,
                  ),
                  currentindex==0? Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 1)
                        ]),
                    height: 50,
                    width: MediaQuery.of(context).size.height,
                    child: TabBar(

                      physics: BouncingScrollPhysics(),
                      indicator: BoxDecoration(
                          color: defaultColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      isScrollable: true,
                      controller: tabController,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Text("All"),
                        Text("Approved"),
                        Text("Panding"),
                        Text("Rejected"),
                        Text("Passed"),
                      ],

                    ),
                  ):SizedBox(),
                 SizedBox(height: currentindex==0? 20:0,),
                 currentindex==0? Expanded(
                    child: TabBarView(
                        controller: tabController,
                        children: [
                          ListViewView(),
                          ListViewView(),
                          ListViewView(),
                          ListViewView(),
                          ListViewView(),
                        ]),
                  ):currentScreen
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          type: BottomNavigationBarType.fixed,
          onTap: (value){
            setState(() {
              currentindex=value;
              switch(currentindex)
              {
                case 1:
                  currentScreen=AllJobsController(
                  );
                  break;
                case 2:
                  currentScreen=ProfileController();
                  break;
              }
            });
          },
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline_sharp),
          label: "All Jobs"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),
          label: "Profile"),
        ],
        ),
      ),
    );
  }
}
