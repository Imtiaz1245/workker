import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/AuthenticationModule/View/text_form_field_view.dart';
import 'package:workerszone/ApplicationModule/PortFolioModule/ViewController/portfolio_view_controller.dart';
import 'package:workerszone/ApplicationModule/ProfileModule/View/circular_profile_picture_view.dart';
import 'package:workerszone/ApplicationModule/ProfileModule/View/portfolio_listview_view.dart';
import 'package:workerszone/ApplicationModule/ProfileModule/View/profile_items_view.dart';
import 'package:workerszone/ApplicationModule/UploadGovernmentIdModule/ViewController/upload_govt_id_view_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/AppBar/default_appbar.dart';
import 'package:workerszone/ApplicationModule/Utills/Buttons/button_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/navigator.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';

class EditProfileController extends StatefulWidget {
  const EditProfileController({Key? key}) : super(key: key);

  @override
  State<EditProfileController> createState() => _ProfileControllerState();
}

class _ProfileControllerState extends State<EditProfileController> {
  var selectedbuisness;
  var buisness = {
    "account holder", "watchman", "mobile shop", "airport Security",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(

      child: Container(
      height: CustomHeight(context),
      width:CustomWidth(context),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultAppBarView(),
         Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),

          child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              CircularProfilePictureView(),
              SizedBox(height: CustomHeight(context)*0.03,),
              TextFormFieldView(
                height: 40.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                prefixIcon: Icon(Icons.person_outline, color: defaultColor,),
                hint: "Muhammad  Imtiaiz",
              ),
              SizedBox(height: CustomHeight(context)*0.03,),
              TextFormFieldView(
                height: 40.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                prefixIcon: Icon(Icons.email_outlined, color: defaultColor,),
                hint: "Imtiaz@gmail.com",
              ),
              SizedBox(height: CustomHeight(context)*0.03,),
              TextFormFieldView(
                height: 40.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                prefixIcon: Icon(
                  Icons.location_history_outlined, color: defaultColor,),
                hint: "Muhammad  Imtiaiz",
              ),
              SizedBox(height: CustomHeight(context)*0.035,),
              ProfileItemsView(
                title: "Buisness Services",
                icon: Icons.shopping_bag_outlined,
                suffixicon: Icons.arrow_drop_down_outlined,
                height: 17.0,
                color: Colors.black54,
              ),
              SizedBox(height: CustomHeight(context)*0.01,),
              ProfileItemsView(
                title: "Government ID Card",
                icon: Icons.contact_mail_sharp,
                suffixicon: Icons.arrow_forward,
                height: 17.0,
                color: Colors.black54,

              ),
                  SizedBox(height: CustomHeight(context)*0.01,),
              ProfileItemsView(
                title: "Portfolio",
                icon: Icons.contact_mail_sharp,
                suffixicon: Icons.arrow_forward,
                height: 17.0,
                color: Colors.black54,
                onpress: (){
                  CustomNavigator(context, PortFolioViewController());
                },

              ),

              DefaultButtonController(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.065,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,

                text: "Save",
                buttoncolor: defaultColor,
                onpress: () {},
                shape: 10.0,
                fontsize: 15.0,
              )
            ],
          ),
        ),
            )
      ]
            )
            )
      )
            ),

    );
  }
}
