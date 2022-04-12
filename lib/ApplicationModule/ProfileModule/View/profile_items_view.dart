import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class ProfileItemsView extends StatelessWidget {
  final icon,title,onpress,lastitem,suffixicon,height,color;
   ProfileItemsView({Key? key, this.icon, this.title, this.onpress, this.lastitem=false, this.suffixicon=Icons.arrow_forward_ios_outlined, this.height=7.0, this.color=const Color(0xFF1C9EBD)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: CustomHeight(context)*0.07,
      width: CustomWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onpress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [

                    Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Icon(icon,color: defaultColor,),
                    ),
                    SizedBox(width: 7,),
                    DefaultTextStyleView(title: title,textcolor: color),
                  ],
                ),
                Icon(suffixicon,color: defaultColor,)
              ],
            ),
          ),

        lastitem==false? Container(
            height: 1,
            width: CustomWidth(context),
            color: color,
          ):SizedBox(),
          SizedBox(height: height,),


        ],
      ),
    );
  }
}
