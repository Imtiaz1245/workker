import 'package:flutter/material.dart';
class VerificationView extends StatelessWidget {
  final iconbackcolor;
  final Color backcolor;
  VerificationView({Key? key, this.backcolor=const Color(0xFF1C9EBD), this.iconbackcolor=const Color(0xFF1C9EBD),}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.all(1.0),
        child: Row(children: [
          Container(
            height: 5,
            width: MediaQuery.of(context).size.width*0.053,
            color: backcolor,
          ),
          SizedBox(
            height: 55,
            width: MediaQuery.of(context).size.width*0.070,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 1.0,top: 7,right: 1.0),
                  child: Container(
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      color: iconbackcolor,
                    ),

                    child:  Icon(Icons.check,color: Colors.white,),





                  ),
                ),
                Text("finished",style: TextStyle(fontSize: 7,color: iconbackcolor),)
              ],
            ),
          ),

          Container(
            height: 5,
            width: MediaQuery.of(context).size.width*0.053,
            color: backcolor,
          ),
        ],),
      );
  }
}
