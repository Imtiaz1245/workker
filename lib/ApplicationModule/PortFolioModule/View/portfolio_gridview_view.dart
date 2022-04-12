import 'package:flutter/material.dart';
class PortFolioGridView extends StatelessWidget {
  const PortFolioGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
    GridView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {

      return SizedBox(
        height: 200,
        width: 200,
        child: index==19?
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(1),

              ),
              child: Center(child:Icon(Icons.camera_alt,color: Colors.white,size: 40,)),
            )
            :Image.asset("assets/images/profilepic.jpg",fit: BoxFit.fill,),
      );
    }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      mainAxisExtent: 100
    ),

    )
    );
  }
}
