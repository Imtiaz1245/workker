import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/ChatModule/View/messages_listview_view.dart';
import 'package:workerszone/ApplicationModule/NotificationModule/ViewController/notification_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/appbar_default2.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
class MessagesController extends StatefulWidget {
  const MessagesController({Key? key}) : super(key: key);

  @override
  State<MessagesController> createState() => _MessagesControllerState();
}

class _MessagesControllerState extends State<MessagesController> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Container(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            DefaultAppBar2(title:"Messages",
              trailing: Row(
                children: [
                  InkWell(
                      onTap:(){
                        CustomNavigator(context, NotificationController());

                      },
                      child: Icon(Icons.notifications_outlined,color: defaultColor,)),
                  SizedBox(width: 10,),
                  SizedBox(height: CustomHeight(context)*0.09,
                    width: CustomWidth(context)*0.09,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profilepic.jpg"),

                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [

                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Color(0xFFF6F6F8),

                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 2.5),
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search Chat"
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            MessagesListViewView(),
          ],
        ),
      )),
    );
  }
}
