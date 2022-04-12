import 'package:flutter/material.dart';
class TextFormFieldView extends StatefulWidget {
  final height,width,hint,controller,prefixIcon,sufixicon,ispassword,containercolor,keyboard;
   TextFormFieldView({Key? key, this.height, this.width, this.hint, this.controller, this.prefixIcon, this.sufixicon, this.ispassword=false, this.containercolor, this.keyboard=TextInputType.text}) : super(key: key);

  @override
  State<TextFormFieldView> createState() => _TextFormFieldViewState();
}

class _TextFormFieldViewState extends State<TextFormFieldView> {
 var  visible=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      color: widget.containercolor,
      child: TextFormField(

        obscureText: visible,
        controller: widget.controller,
keyboardType: widget.keyboard,
        decoration: InputDecoration(
hintStyle: TextStyle(fontSize: 14),
          suffixIcon: widget.ispassword==true?IconButton(onPressed: (){

            setState(() {
              visible=!visible;
            });
          }, icon: Icon(visible==true?Icons.visibility_off :Icons.visibility)):SizedBox(),
        prefixIcon: widget.prefixIcon,
          hintText: widget.hint,
        ),
      ),

    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      visible=widget.ispassword==true;
    });
  }
}
