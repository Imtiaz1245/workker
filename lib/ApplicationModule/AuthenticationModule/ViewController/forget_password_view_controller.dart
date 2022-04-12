import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/text_form_field_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/app_name.dart';
import 'package:workerszone/ApplicationModule/Utills/Buttons/button_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class ForgetPasswordcontroller extends StatefulWidget {
  const ForgetPasswordcontroller({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordcontroller> createState() => _ForgetPasswordcontrollerState();
}

class _ForgetPasswordcontrollerState extends State<ForgetPasswordcontroller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 20.0),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios_rounded,color: defaultColor,)),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 10.0),
                  child: AppNameAppbar(
                    fontsizeeorker: 20.0,
                    fontsizezone: 25.0,
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Center(child: DefaultTextStyleView(title: "Forget Your Password?",fontsize: 21.0)),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  TextFormFieldView(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    hint: "Enter Email Address",
                    prefixIcon: Icon(Icons.email_outlined,color: defaultColor,),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),

                  DefaultButtonController(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width,
                    text: "Send",
                    buttoncolor: defaultColor,
                    onpress: (){},
shape: 10.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      )),
    );
  }
}
