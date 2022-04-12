import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
void CustomNavigator(final context,final screenname){
Navigator.push(context, PageTransition(child: screenname, type: PageTransitionType.rightToLeft,

duration: Duration(milliseconds: 300),reverseDuration: Duration(milliseconds: 300),
),)  ;
}