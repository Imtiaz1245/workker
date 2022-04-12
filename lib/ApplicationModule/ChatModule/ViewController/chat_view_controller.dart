import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/ChatModule/View/bottom_textformfield_view.dart';
import 'package:workerszone/ApplicationModule/ChatModule/View/chat_listview_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/chat_appbar.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
class ChatController extends StatefulWidget {
  const ChatController({Key? key}) : super(key: key);

  @override
  State<ChatController> createState() => _ChatControllerState();
}

class _ChatControllerState extends State<ChatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: Column(
          children: [
            ChatAppBar(),
            Expanded(child: Container(
               child: ChatListViewView()
            )),
            BottomTextFormFieldView(),
          ],
        ),
      )),
    );
  }
}
