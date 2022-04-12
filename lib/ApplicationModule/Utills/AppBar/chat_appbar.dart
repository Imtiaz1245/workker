import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/ChatModule/View/circular_image_view.dart';
import 'package:workerszone/ApplicationModule/UploadGovernmentIdModule/View/id_view.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class ChatAppBar extends StatefulWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  State<ChatAppBar> createState() => _ChatAppBarState();
}

class _ChatAppBarState extends State<ChatAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: CustomWidth(context),
      decoration: BoxDecoration(

        color: defaultColor,

          boxShadow: [
  BoxShadow(
    color: Colors.grey,
    blurRadius: 1
  )
]
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: whitecolor,
              )),
          SizedBox(
            height: 40,
            width: 40,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profilepic.jpg"),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          SizedBox(
              width: CustomWidth(context) * 0.60,
              child: DefaultTextStyleView(
                  title: "Imran Khan", textcolor: whitecolor, fontsize: 17.0)),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: whitecolor,
              ))
        ],
      ),
    );
  }
}
