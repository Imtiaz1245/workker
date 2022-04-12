import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/ViewController/login_view_controller.dart';
import 'package:workerszone/ApplicationModule/ChatModule/ViewController/messages_view_controller.dart';
import 'package:workerszone/ApplicationModule/NotificationModule/ViewController/notification_view_controller.dart';
import 'package:workerszone/ApplicationModule/ProfileModule/View/profile_items_view.dart';
import 'package:workerszone/ApplicationModule/ProfileModule/ViewController/profile_edit_view_controller.dart';
import 'package:workerszone/ApplicationModule/SettingModule/ViewController/setting_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class ProfileController extends StatefulWidget {
  const ProfileController({Key? key}) : super(key: key);

  @override
  State<ProfileController> createState() => _ProfileControllerState();
}

class _ProfileControllerState extends State<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
       
        width: CustomWidth(context),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 110,
                  width: 110,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profilepic.jpg"),
                  ),
                ),
              ),
              Center(child: DefaultTextStyleView(title: "Imran Khan",textheight: 2.0,fontsize: 20.0)),
SizedBox(height: 10,),
              ProfileItemsView(icon: Icons.person_outline,title: "Edit Profile",onpress: (){
                CustomNavigator(context, EditProfileController());
              },),
              ProfileItemsView(
                onpress: (){
                  CustomNavigator(context, NotificationController());
                },
                icon: Icons.notification_important_outlined,title: "Notification",),
              ProfileItemsView(icon: Icons.message,title: "Messages",
                onpress: (){
                  CustomNavigator(context, MessagesController());
                },),
              ProfileItemsView(icon: Icons.settings,title: "Settings",
                onpress: (){
                  CustomNavigator(context, SetingController());
                },),
              ProfileItemsView(icon: Icons.star_border,title: "Rating",),
              ProfileItemsView(icon: Icons.login,title: "Logout",lastitem: true,
                onpress: (){
                  CustomNavigator(context, LoginController());
                },),
            ],
          ),
        ),
      ),
    );
  }
}
