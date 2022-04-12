import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/text_form_field_view.dart';
import 'package:workerszone/ApplicationModule/JobModule/View/job_list_view.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';

class AllJobsController extends StatefulWidget {
  const AllJobsController({Key? key}) : super(key: key);

  @override
  State<AllJobsController> createState() => _AllJobsControllerState();
}

class _AllJobsControllerState extends State<AllJobsController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: CustomWidth(context)*0.02),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.74,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Color(0xFFF6F6F8),
                  ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: CustomWidth(context)*0.01),
                  child: TextFormField(

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 15),
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 20),

                      suffixIcon: Padding(
                        padding:  EdgeInsets.only(top: 8.0),
                        child: IconButton(onPressed: (){},icon: Icon(Icons.segment),),
                      ),
                      prefixIcon:  Padding(
                        padding:  EdgeInsets.only(top: 8.0,),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),

                ),
                SizedBox(width: CustomWidth(context)*0.03,),
                Icon(Icons.location_on,color: defaultColor,size: CustomWidth(context)*0.09,)
              ],
            ),
            JobListViewView2(),
          ],
        ),
      ),
    ));
  }
}
