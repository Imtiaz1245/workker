import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/text_form_field_view.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/ViewController/login_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/default_button.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class SignUpCardView extends StatefulWidget {
  const SignUpCardView({Key? key}) : super(key: key);

  @override
  State<SignUpCardView> createState() => _LoginCardViewState();
}

class _LoginCardViewState extends State<SignUpCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: CustomHeight(context)*0.69,
      width: CustomWidth(context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 25,
            left:MediaQuery.of(context).size.height / 25,
            right:MediaQuery.of(context).size.height / 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyleView(
              title: 'Sign Up',
              fontsize: 25.0,
              fontfamily: "poppinsregular",
            ),
            DefaultTextStyleView(
                title: 'Sign Up to Continue',
                fontsize: 15.0,
                textcolor: blackcolor,
                textheight: 1.5),
            SizedBox(
              height: MediaQuery.of(context).size.height/60,
            ),
            TextFormFieldView(
              hint: "Full Name",
              height: 50.0,
              width: MediaQuery.of(context).size.height,
              prefixIcon: Icon(
                Icons.person_outline,
                color: defaultColor,
                size: 25,
              ),
            ),    SizedBox(
              height: MediaQuery.of(context).size.height/60,
            ),
            TextFormFieldView(
              hint: "Phone Number",
              height: 50.0,
              width: MediaQuery.of(context).size.height,
              prefixIcon: Icon(
                Icons.call,
                color: defaultColor,
                size: 25,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/60,
            ),
            TextFormFieldView(
              height: 50.0,
              hint: "Email",
              width: MediaQuery.of(context).size.height,
              prefixIcon:
                  Icon(Icons.email_outlined, color: defaultColor, size: 25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/60,
            ),
            TextFormFieldView(
              hint: "Password",
              height: 50.0,
              width: MediaQuery.of(context).size.height,
              ispassword: true,
              prefixIcon:
                  Icon(Icons.lock_outlined, color: defaultColor, size: 25),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/60,),

            DefaultButtonView(
                onpress: (){

                },
                height: MediaQuery.of(context).size.height*0.075,
                width: MediaQuery.of(context).size.width,
                text: "Sign Up",
                textcolor: whitecolor,
                buttoncolor: defaultColor,

                borderradius: 10.0,
                buttonradius: 10.0
            ),

            SizedBox(height: MediaQuery.of(context).size.height/55,),

            DefaultButtonView(
                onpress: (){
                  CustomNavigator(context, LoginController());
                },               height: MediaQuery.of(context).size.height*0.075,
                bordercolor: defaultColor,
                width: MediaQuery.of(context).size.width,
                text: "Sign In",
                borderradius: 10.0,
                buttonradius: 10.0,
                borderwidth: 2.0,
                textcolor: defaultColor
            ),
          ],
        ),
      ),
    );
  }
}
