import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/lef_tright_container.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/login_view.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/signup_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/app_name.dart';
class SignUpController extends StatefulWidget {
  const SignUpController({Key? key}) : super(key: key);

  @override
  State<SignUpController> createState() => _LoginControllerState();
}

class _LoginControllerState extends State<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: LeftRightBorder(),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        AppNameAppbar(),

                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                        Padding(
                          padding:  EdgeInsets.only(left: 20,right: 20,top: 5),
                          child:SignUpCardView(),
                        )
                      ],
                    )),


              ],
            ),
          ),

        ),
      ),
    );
  }
}
