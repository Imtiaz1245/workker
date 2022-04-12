import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/ChatModule/View/circular_image_view.dart';
import 'package:workerszone/ApplicationModule/ChatModule/ViewController/chat_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class MessagesListViewView extends StatefulWidget {
  const MessagesListViewView({Key? key}) : super(key: key);

  @override
  State<MessagesListViewView> createState() => _MessagesListViewViewState();
}

class _MessagesListViewViewState extends State<MessagesListViewView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Container(
            height: CustomHeight(context) * 0.1,
            width: CustomWidth(context),
            decoration: BoxDecoration(color: whitecolor.withOpacity(0.2), ),
            child: Row(
              children: [
                CircularImageView(
                  color: index % 2 == 0 || index % 3 == 0
                      ? Colors.green
                      : Colors.grey,
                  profileimage: "assets/images/profilepic.jpg",
                ),
                SizedBox(
                  width:CustomWidth(context)*0.06,
                ),
                InkWell(
                  onTap: (){
                    CustomNavigator(context, ChatController());
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(top: CustomHeight(context)*0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: CustomWidth(context)*0.55,
                                child: DefaultTextStyleView(title: "Imran Khan ",fontsize: 15.0,textcolor: blackcolor,textheight: 1.0))

                           , DefaultTextStyleView(title: "03:45 Am ",fontsize: 10.0,textcolor: Colors.grey)

                          ],
                        ),
                        SizedBox(height: 1,),
                        DefaultTextStyleView(title: "I will not leave politation",fontsize: 10.0,textcolor: Colors.grey,textheight: 2.0)
                      ,
                        SizedBox(height: CustomHeight(context)*0.01,),
                        Container(
                        height: 1,
                       width: CustomWidth(context)*0.68,
                       color: Colors.grey,
                      )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
