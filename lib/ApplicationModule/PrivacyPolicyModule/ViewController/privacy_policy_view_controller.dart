import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/appbar_default2.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class PrivacyPolicyController extends StatefulWidget {
  const PrivacyPolicyController({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyController> createState() => _PrivacyPolicyControllerState();
}

class _PrivacyPolicyControllerState extends State<PrivacyPolicyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      SingleChildScrollView(
        child: Container(
          height: CustomHeight(context),
          width: CustomWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              DefaultAppBar2(title: "Privacy Policy"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyleView(title: "Terms And Conditions",fontsize: 20.0),
               SizedBox(height: 10,),
                 SizedBox(
width: CustomWidth(context),
                   child: DefaultTextStyleView(
                       fontsize: 12.0,
                       textcolor: Colors.black87,
                       title: "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for you"
                           "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for you"
                           "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for youBrowse or delete your Search history, and discover how your data helps Search and other Google services work better for you"
                           ""),
                 ),
                    SizedBox(height: 20,),
                    DefaultTextStyleView(title: "Disclamier",fontsize: 20.0),
               SizedBox(height: 10,),
                 SizedBox(
width: CustomWidth(context),
                   child: DefaultTextStyleView(
                       fontsize: 12.0,
                       textcolor: Colors.black87,
                       title: "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for you"
                           "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for you"
                           "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for you"
                           "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for you"
                           "Browse or delete your Search history, and discover how your data helps Search and other Google services work better for you"),
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
