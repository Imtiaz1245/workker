import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class AppNameAppbar extends StatelessWidget {
  final fontsizeeorker,fontsizezone;
   AppNameAppbar({Key? key, this.fontsizeeorker=45.0, this.fontsizezone=49.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
child:    Column(
      children: [
        DefaultTextStyleView(title: 'Workers',
          fontsize: fontsizeeorker,
          fontfamily: "poppins"
        ),
        DefaultTextStyleView(title: 'Zone',
          fontsize: fontsizeeorker,
          fontfamily: "poppinsregular",
          textcolor: blackcolor,
        ),
      ],
)
    );
  }
}
