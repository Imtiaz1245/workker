import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/ChatModule/ViewController/messages_view_controller.dart';
import 'package:workerszone/ApplicationModule/NotificationModule/ViewController/notification_view_controller.dart';
import 'package:workerszone/ApplicationModule/ResetPasswordModule/ViewController/reset_password_view_controller.dart';
import 'package:workerszone/ApplicationModule/SettingModule/ViewController/setting_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class DefaultAppBarView extends StatefulWidget {


  const DefaultAppBarView({Key? key, }) : super(key: key);

  @override
  State<DefaultAppBarView> createState() => _DefaultAppBarViewState();
}

class _DefaultAppBarViewState extends State<DefaultAppBarView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.12,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            },icon: Icon(Icons.arrow_back_ios_rounded,color: defaultColor,)),
            Padding(
              padding:  EdgeInsets.only(top: 10.0),
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
    );
  }
}
