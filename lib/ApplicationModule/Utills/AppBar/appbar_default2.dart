import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class DefaultAppBar2 extends StatelessWidget {
  final title,trailing;
   DefaultAppBar2({Key? key, required this.title, this.trailing=const SizedBox(width: 45,)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_rounded,color: defaultColor,)),
          DefaultTextStyleView(title: title,fontsize: 23.0),
          trailing,

        ],
      ),
    );
  }
}
