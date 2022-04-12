import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:workerszone/ApplicationModule/Utills/Buttons/button_controller.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/text_style.dart';
class CircularProfilePictureView extends StatefulWidget {
  const CircularProfilePictureView({Key? key}) : super(key: key);

  @override
  State<CircularProfilePictureView> createState() => _CircularProfilePictureViewState();
}

class _CircularProfilePictureViewState extends State<CircularProfilePictureView> {
  var pickedimage;

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: ClipOval(
                    child:pickedimage==null?Image.asset("assets/images/profilepic.jpg",fit: BoxFit.fill,):Image.file(pickedimage,fit: BoxFit.fill,),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(

                  onTap: (){

               showDialog(context: context, builder: (BuildContext context){
                 return Dialog(
                   child:Container(
                     height: 200,
                     width: 100,
                     child: Padding(
                       padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.stretch,
                         children: [
                           Center(
                             child: DefaultTextStyleView(title: 'Choose Option',
                               fontsize: 25.0,
                             ),
                           ),
                           Expanded(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [

                                 SizedBox(height: 10,),
                                 DefaultButtonController(
                                   width: 200.0,
                                   height: 50.0,
                                   fontsize: 15.0,
                                   shape: 10.0,onpress: ()async{
                                   final ImagePicker _picker = ImagePicker();
                                   // Pick an image
                                   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                                   setState(() {
                                     pickedimage=File(image!.path);
                                   });
                                   Navigator.pop(context);

                                 },
                                   buttoncolor: defaultColor,
                                   text: "Gellary Image",
                                 ),
                                 DefaultButtonController(
                                   width: 200.0,
                                   height: 50.0,
                                   fontsize: 15.0,
                                   shape: 10.0,onpress: ()async{

                                   final ImagePicker _picker = ImagePicker();
                                   // Pick an image
                                   final XFile? image = await _picker.pickImage(source: ImageSource.camera);
                                   setState(() {
                                     pickedimage=File(image!.path);
                                   });
                                   Navigator.pop(context);
                                 },
                                   buttoncolor: defaultColor,
                                   text: "Camera Image",
                                 )
                               ],
                             ),
                           )

                         ],
                       ),
                     ),
                   ) ,
                 );
               });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Icon(
                      Icons.camera_alt_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}
