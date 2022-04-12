import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/ViewController/login_view_controller.dart';
import 'package:workerszone/ApplicationModule/OnBoardingModule/ViewController/onboarding_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
class SplashScreenController extends StatefulWidget {
  const SplashScreenController({Key? key}) : super(key: key);

  @override
  State<SplashScreenController> createState() => _SplashScreenControllerState();
}

class _SplashScreenControllerState extends State<SplashScreenController> {

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height,
        width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height:MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        color: splashBackColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("workers",style: TextStyle(fontSize: 45,color: defaultColor,fontFamily: 'poppins',height: 1),),
                  Text("Zone",style: TextStyle(fontSize: 49,color: whitecolor,fontFamily: 'poppinsregular',height: 1),),
                ],
              ),
            ),

            Text.rich(
              TextSpan(
                  text: "A product of ",style: TextStyle(color: Colors.white,fontFamily: "poppins"),
                  children:[
                    TextSpan(text: "BuiltinSoft",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: "poppins")),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
  void splash()async{
  await  Future.delayed(Duration(seconds: 3));
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return OnBoardingController();
  },));
  }

  @override
  void initState() {
    splash();
  }
}
