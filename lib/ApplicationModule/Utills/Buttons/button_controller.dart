import 'package:flutter/material.dart';
class DefaultButtonController extends StatefulWidget {
final      height,width,onpress,buttoncolor,shape,text,textcolor,fontsize;

   DefaultButtonController({Key? key, this.height, this.width, this.onpress, this.buttoncolor, this.shape=1.0, this.text="login", this.textcolor=Colors.white, this.fontsize=20.0}) : super(key: key);
@override
  State<DefaultButtonController> createState() => _DefaultButtonControllerState();
}

class _DefaultButtonControllerState extends State<DefaultButtonController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:widget.height,
      width:widget. width,
      child: MaterialButton(
        onPressed:widget. onpress,
        color:widget.buttoncolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.shape)),
        child: Text(widget.text,style: TextStyle(fontFamily: "poppins",fontSize: widget.fontsize,color:widget.textcolor),),
      ),
    );
  }
}
