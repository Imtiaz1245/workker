import 'package:flutter/material.dart';
class LeftRightBorder extends StatelessWidget {
  const LeftRightBorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2),
            child: Container(
              height: MediaQuery.of(context).size.height/2.1,
              width: 30,
              decoration: BoxDecoration(
                color: Color(0xE83CC6EC),

                borderRadius: BorderRadius.only(topLeft: Radius.circular(200),bottomLeft: Radius.circular(250)),

              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.00),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(350),bottomRight: Radius.circular(250)),

                gradient: LinearGradient(
  begin: Alignment.topLeft,
  colors: [

    Color(0xE83CC6EC),

    Color(0xE8E6ECEE),



  ]
),
              ),
            ),
          ),
        )
      ],
    );
  }
}
