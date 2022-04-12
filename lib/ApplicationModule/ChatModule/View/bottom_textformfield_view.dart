import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
class BottomTextFormFieldView extends StatefulWidget {
  const BottomTextFormFieldView({Key? key}) : super(key: key);

  @override
  State<BottomTextFormFieldView> createState() => _BottomTextFormFieldViewState();
}

class _BottomTextFormFieldViewState extends State<BottomTextFormFieldView> {
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 50,
      width:CustomWidth(context),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

              width: CustomWidth(context)*0.8,
              decoration: BoxDecoration(
                color: Color(0xD0D0CDCB),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 15.0,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: CustomWidth(context)*0.5,

                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Text Your Message",
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.link_rounded,color: Colors.black,),
                    Icon(Icons.camera_alt_sharp,color: Colors.black,),
                  ],
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: defaultColor,
child: InkWell(
  onTap: (){},
  child:  Icon(Icons.mic_none_sharp,color: Colors.white,),
),            )
          ],
        ),
      ),
    );
  }
}
