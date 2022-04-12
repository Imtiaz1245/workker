import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';

Widget  DefaultTextStyleView(
{
  required String title,
  final fontsize,fontfamily="poppinsregular",fontweigth,textcolor  =const Color(0xFF1C9EBD),
textheight=1.0,


}
){
  return Text(title,style: TextStyle(color:textcolor,fontSize: fontsize,fontFamily: fontfamily, height: textheight),);
}