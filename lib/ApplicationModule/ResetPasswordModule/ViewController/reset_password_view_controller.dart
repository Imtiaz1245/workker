import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/text_form_field_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/app_name.dart';
import 'package:workerszone/ApplicationModule/Utills/Buttons/button_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class ResetPasswordController extends StatefulWidget {
  const ResetPasswordController({Key? key}) : super(key: key);

  @override
  State<ResetPasswordController> createState() =>
      _ResetPasswordControllerState();
}

class _ResetPasswordControllerState extends State<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: CustomWidth(context) * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: CustomHeight(context) * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: defaultColor,
                        )),
                  ),
                  AppNameAppbar(
                    fontsizezone: 25.0,
                    fontsizeeorker: 30.0,
                  ),
                  SizedBox(),
                ],
              ),
              SizedBox(
                height: CustomHeight(context) * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: CustomWidth(context) * 0.10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyleView(
                        title: "Reset Password", fontsize: 18.0),
                    SizedBox(
                      height: CustomHeight(context) * 0.05,
                    ),
                    TextFormFieldView(
                      hint: "Current Password",
                      ispassword: true,
                      prefixIcon: Icon(
                        Icons.vpn_key_rounded,
                        color: defaultColor,
                      ),
                      width: CustomWidth(context),
                    ),
                    SizedBox(
                      height: CustomHeight(context) * 0.05,
                    ),
                    TextFormFieldView(
                      hint: "New Password",
                      ispassword: true,
                      prefixIcon: Icon(
                        Icons.vpn_key_rounded,
                        color: defaultColor,
                      ),
                      width: CustomWidth(context),
                    ),
                    SizedBox(
                      height: CustomHeight(context) * 0.05,
                    ),
                    TextFormFieldView(
                      hint: "Confirm New Password",
                      ispassword: true,

                      prefixIcon: Icon(
                        Icons.vpn_key_rounded,
                        color: defaultColor,
                      ),
                      width: CustomWidth(context),
                    ),
                    SizedBox(
                      height: CustomHeight(context) * 0.05,
                    ),
                    DefaultButtonController(
                      height: 50.0,
                      width: CustomWidth(context),
                      text: "Update",
                      onpress: () {},
                      buttoncolor: defaultColor,
                      shape: 10.0,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
