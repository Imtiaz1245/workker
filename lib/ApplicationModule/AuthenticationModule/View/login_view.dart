import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/text_form_field_view.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/ViewController/forget_password_view_controller.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/ViewController/signup_view_controller.dart';
import 'package:workerszone/ApplicationModule/HomeScreenModule/ViewController/bottom_appbar_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/default_button.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class LoginCardView extends StatefulWidget {
  const LoginCardView({Key? key}) : super(key: key);

  @override
  State<LoginCardView> createState() => _LoginCardViewState();
}

class _LoginCardViewState extends State<LoginCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.70,
      width: MediaQuery.of(context).size.width,
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
              title: 'Sign In',
              fontsize: 25.0,
              fontfamily: "poppinsregular",
            ),
            DefaultTextStyleView(
                title: 'Sign In to Continue',
                fontsize: 15.0,
                textcolor: blackcolor,
                textheight: 1.5),
            SizedBox(
              height: MediaQuery.of(context).size.height/60,
            ),
            TextFormFieldView(
              hint: "Email",

              height: 50.0,
              width: MediaQuery.of(context).size.height,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: defaultColor,
                size: 25,
              ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height/110,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {
CustomNavigator(context, ForgetPasswordcontroller());
                }, child: DefaultTextStyleView(title: "Forget Password?",textcolor: blackcolor,
                fontsize: 15.0
                )),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            DefaultButtonView(
              onpress: (){
CustomNavigator(context, BottomAppBarCoontroller());
              },
                height: MediaQuery.of(context).size.height*0.075,
              width: MediaQuery.of(context).size.width,
              text: "Sign In",
                textcolor: whitecolor,
                buttoncolor: defaultColor,

              borderradius: 10.0,
              buttonradius: 10.0
            ),
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            DefaultButtonView(
              onpress: (){
                CustomNavigator(context, SignUpController());
              },
                height: MediaQuery.of(context).size.height*0.075,
                bordercolor: defaultColor,
              width: MediaQuery.of(context).size.width,
              text: "Sign Up",
              borderradius: 10.0,
              buttonradius: 10.0,
                borderwidth: 2.0,
              textcolor: defaultColor
            )
          ],
        ),
      ),
    );
  }
}
