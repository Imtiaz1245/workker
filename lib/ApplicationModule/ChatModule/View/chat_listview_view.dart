import 'package:flutter/material.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/constant_colors.dart';
import 'package:workerszone/ApplicationModule/Utills/Constants/screen_height_width.dart';
class ChatListViewView extends StatefulWidget {
  const ChatListViewView({Key? key}) : super(key: key);

  @override
  State<ChatListViewView> createState() => _ChatListViewViewState();
}

class _ChatListViewViewState extends State<ChatListViewView> {
  var chatlist=[
    "dgjsdhfgsdg jhs djg sgd dsghs dgjhdg vndfg",
    "dgjsdhfgsdg jhs djg sgd dsgh ssdffs dgjhdg vndfg",
    "dgjsdhfgsdg jhs djg sgd dsghs dgjhdg vn "
        "gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfggskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfggskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfggskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg gskldgjskdlg fgkf hkf fkjhgf fhkjdfg",
    "dgjsdhfgsdg jhs djg sgd dsghs dgjhdg vndfg",
    "dgjsdhfgsdg jhs djg sgd dsghs dv fhb gjhdg vndfg",
    "dgjsdhfgsdg jhs djg sgd dsghs dgjhdg vndfg",
    "dgjsdhfgsdg jhs djg sgd dsghs dfgh fhdfb gjhdg vndfg",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {

      return index%2==0?Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: Container(
              constraints: BoxConstraints(
                maxHeight: CustomHeight(context),
                maxWidth: CustomWidth(context)*0.65,

              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight:index%2==0? Radius.circular(10): Radius.circular(0),
                  topRight:  Radius.circular(10),bottomLeft:  Radius.circular(10)),
                  color: whitecolor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1
                    )
                  ]
                ),
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(chatlist[index]),
                ),
              ),
            ),
          ),
        
        Padding(
          padding:  EdgeInsets.only(bottom: 15.0),
          child: Align(
              alignment: Alignment.topRight,
              child: Text("2/2/2020")),
        )],
      ):Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [


      Padding(
      padding:  EdgeInsets.only(bottom: 15.0),
        child: Align(
        alignment: Alignment.topRight,
        child: Text("2/2/2020"))),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: Container(
              constraints: BoxConstraints(
                maxHeight: CustomHeight(context),
                maxWidth: CustomWidth(context)*0.65,

              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight:index%2==0? Radius.circular(10): Radius.circular(0),
                        topRight:  Radius.circular(10),bottomLeft:  Radius.circular(10)),
                    color: whitecolor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1
                      )
                    ]
                ),
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(chatlist[index]),
                ),
              ),
            ),
          ),
],
      );

    },);
  }
}
