import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/PortFolioModule/View/portfolio_gridview_view.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/appbar_default2.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
class PortFolioViewController extends StatefulWidget {
  const PortFolioViewController({Key? key}) : super(key: key);

  @override
  State<PortFolioViewController> createState() => _PortFolioViewControllerState();
}

class _PortFolioViewControllerState extends State<PortFolioViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: CustomHeight(context),
          width: CustomWidth(context),
          child: Column(
            children: [
              SizedBox(height: 10,),
              DefaultAppBar2(title: "PortFolio",),

            SizedBox(
              height: 10,
            ),
              PortFolioGridView()
            ],
          ),
        ),
      ),
    );
  }
}
