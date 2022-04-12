import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/default_button.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class IdView extends StatefulWidget {
  const IdView({Key? key}) : super(key: key);

  @override
  State<IdView> createState() => _IdViewState();
}

class _IdViewState extends State<IdView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: CustomHeight(context)*0.55,
      width: CustomWidth(context),
child:Stack(
  children: [
        Container(
          height: CustomHeight(context)*0.50,
      width: CustomWidth(context),
      color: splashBackColor,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios_rounded,color: defaultColor,))
            , SizedBox(height: CustomHeight(context)*0.02,),
                Center(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: CustomWidth(context)*0.15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     Center(
                       child: Container(
                         height: CustomHeight(context)*0.15,
                         width: CustomHeight(context)*0.22,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage("assets/images/documenticon.png")
                           )
                         ),
                         child: Align(
                             alignment: Alignment.bottomRight,
                             child: Padding(
                               padding:  EdgeInsets.only(right: CustomWidth(context)*0.08),
                               child: Image.asset("assets/images/downloadicon.png",),
                             )),
                       ),
                     ),
                        Center(child: DefaultTextStyleView(title: "Upload GOVERNMENT ID",textcolor: whitecolor,textheight: 2.0,fontsize: 15.0)),
                        SizedBox(
                            width: CustomWidth(context)*0.8,
                            child: DefaultTextStyleView(title: "Upload GOVERNMENT "
                                "dfjsd"
                                "fhsd df jds dfjuyu kbsdf"
                                "jdfh dfkhd dkj"
                                "fhds dfkjhd djd dd fujf fjd ID",textcolor: Colors.white70,textheight: 2.0,fontsize: 10.0)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
    ),

    Align(
      alignment: Alignment.bottomCenter,
      child:Padding(
        padding:  EdgeInsets.only(bottom: 8.0),
        child: SizedBox(
          height: CustomWidth(context)*0.17,
          width: CustomWidth(context)*0.6,
          child: MaterialButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: defaultColor,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(

                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.camera_alt,color: defaultColor,),
                  ),
                  SizedBox(width: CustomWidth(context)*0.02,),
                  DefaultTextStyleView(title: "Take Picture Of ID",fontsize: 12.0,textcolor: whitecolor),

                ],
              ),
            ),
          ),
        ),
      )
    )
  ],
),
    );
  }
}
