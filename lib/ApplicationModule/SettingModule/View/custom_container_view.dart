import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class CustomContainerView extends StatelessWidget {
  final title,ontap;
   CustomContainerView({Key? key, this.title, this.ontap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: CustomWidth(context),
          height: CustomHeight(context)*0.07,
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 1
        )
  ]
),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DefaultTextStyleView(title: "    $title", fontsize: 20.0,textcolor: blackcolor),
            ],
          ),
        ),
      ),
      
    );
  }
}
