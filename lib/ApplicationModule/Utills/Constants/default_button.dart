import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

Widget DefaultButtonView(
    {
  required onpress,
      final height,width,containercolor,bordercolor=const Color(0xFF1C9EBD),borderwidth=0.0,buttonradius=0.0,borderradius=0.0,
      buttoncolor,text,textcolor=const Color(0xFFE9EEEF),textfontsize=25.0,
}){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: containercolor,
      borderRadius: BorderRadius.circular(borderradius),
      border: Border.all(
        color: bordercolor,
        width: borderwidth,
      )

    ),
    child: MaterialButton(
      onPressed: onpress,
      color: buttoncolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(buttonradius)),
      child: DefaultTextStyleView(title: text,textcolor: textcolor,fontsize: textfontsize),
    ),
  );
}