import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';

class PortFolioListView extends StatefulWidget {
  const PortFolioListView({Key? key}) : super(key: key);

  @override
  State<PortFolioListView> createState() => _PortFolioListViewState();
}

class _PortFolioListViewState extends State<PortFolioListView> {
  ScrollController scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    InkWell(
        onTap: (){
          setState(() {
            next(false);
          });
        },
        child: Icon(Icons.arrow_back_ios_outlined,color: defaultColor,)),
        Container(
          height:MediaQuery.of(context).size.height*0.08 ,
          width: MediaQuery.of(context).size.width*0.6,

          child: ListView.builder(
            controller: scrollController,
            itemCount: 5,
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 3),
                child: Container(
                  height:MediaQuery.of(context).size.height*0.08 ,
                  width: MediaQuery.of(context).size.width*0.185,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
border: Border.all(color: defaultColor)
                  ),
                  child: ClipRRect(
                    child: Image.asset("assets/images/profilepic.jpg",fit: BoxFit.fill,),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              );
            },),
        ),

        InkWell(
            onTap: (){
              setState(() {
                next(true);
              });
            },
            child: Icon(Icons.arrow_forward_ios_outlined,color: defaultColor,)),

      ],
    );
  }
  void next(bool add){

final double current=scrollController.position.pixels;
if(add==true)
  scrollController.jumpTo(current+20.0);
  else
  scrollController.jumpTo(current-20.0);
  }
}
