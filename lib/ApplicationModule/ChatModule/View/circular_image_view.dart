import 'package:flutter/material.dart';
class CircularImageView extends StatelessWidget {
  final color,profileimage;
   CircularImageView({Key? key, this.color=Colors.grey, required this.profileimage}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
image: DecorationImage(
  image: AssetImage(profileimage),fit: BoxFit.fill
),
            shape: BoxShape.circle
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding:  EdgeInsets.only(left: 1.0,bottom: 5),
            child: Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,

              ),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 9,
                  width: 9,
                  child: CircleAvatar(
                    backgroundColor: color,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}
