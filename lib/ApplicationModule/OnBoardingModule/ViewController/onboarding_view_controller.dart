import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/ViewController/login_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/app_name.dart';
import 'package:workerszone/ApplicationModule/Utills/Buttons/button_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';

class OnBoardingController extends StatefulWidget {
  const OnBoardingController({Key? key}) : super(key: key);

  @override
  State<OnBoardingController> createState() => _OnBoardingControllerState();
}

class _OnBoardingControllerState extends State<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              AppNameAppbar(),
              SizedBox(height: CustomHeight(context)*0.1,),
              Text(
                "Enjoy Free Leads, Bid & \nWin More Jobs",
                style: TextStyle(
                    fontSize: 25,
                    color: blackcolor,
                    fontFamily: 'poppinsregular',
                    height: 1),
              ),
              SizedBox(height: CustomHeight(context)*0.05,),
              Expanded(child: Container(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: CustomHeight(context)*0.40,
decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/images/workersback.jpg"),
    fit: BoxFit.fill
  )
),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:  EdgeInsets.only(bottom: 20.0),
                            child: DefaultButtonController(
                              height: 50.0,
                              width: 200.0,
                              text: "GET STARTED",
                              onpress: (){
                                CustomNavigator(context, LoginController());
                              },
                              shape: 10.0,
                              buttoncolor: defaultColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: CustomHeight(context)*0.33,
                        child: Image.asset("assets/images/workers.png",fit: BoxFit.fill,),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

}
