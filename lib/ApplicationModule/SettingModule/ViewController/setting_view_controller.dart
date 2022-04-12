import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/ViewController/login_view_controller.dart';
import 'package:workerszone/ApplicationModule/PrivacyPolicyModule/ViewController/privacy_policy_view_controller.dart';
import 'package:workerszone/ApplicationModule/ResetPasswordModule/ViewController/reset_password_view_controller.dart';
import 'package:workerszone/ApplicationModule/SettingModule/View/custom_container_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/appbar_default2.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class SetingController extends StatefulWidget {
  const SetingController({Key? key}) : super(key: key);

  @override
  State<SetingController> createState() => _SetingControllerState();
}

class _SetingControllerState extends State<SetingController> {
  bool notification=false,location=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            DefaultAppBar2(
              title: "Settings",
            ),
            SizedBox(height: CustomHeight(context) * 0.05),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Container(
                width: CustomWidth(context),
                height: CustomHeight(context) * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextStyleView(title: "    Notification", fontsize: 20.0,textcolor: blackcolor),
                  Switch(value: notification, onChanged: (value){
                  setState(() {
                    notification=!notification;
                  });
                  })
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Container(
                width: CustomWidth(context),
                height: CustomHeight(context) * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultTextStyleView(title: "    Location", fontsize: 20.0,textcolor: blackcolor),
                  Switch(value: location, onChanged: (value){
                  setState(() {
                    location=!location;
                  });
                  })
                  ],
                ),
              ),
            ),
            CustomContainerView(title: "Change Password",ontap: (){
              CustomNavigator(context, ResetPasswordController());
            },),
            CustomContainerView(title: "Privacy Policy",ontap: (){
              CustomNavigator(context, PrivacyPolicyController());
            },),
            CustomContainerView(title: "SignOut",ontap: (){
            Navigator.push(context, PageTransition(child: LoginController(), type: PageTransitionType.leftToRight));
            },),
          ],
        ),
      )),
    );
  }
}
