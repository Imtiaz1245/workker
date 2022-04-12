import 'package:flutter/material.dart';
class JobDetailView extends StatefulWidget {
  final title, subtitle,subtitlecolor;
  JobDetailView({Key? key, this.title, this.subtitle, this.subtitlecolor=Colors.black}) : super(key: key);

  @override
  State<JobDetailView> createState() => _JobDetailViewState();
}

class _JobDetailViewState extends State<JobDetailView> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Text(widget.title),
          Padding(

            padding:  EdgeInsets.only(top: 7),
            child: Text(widget.subtitle,style: TextStyle(color: widget.subtitlecolor),),
          )

        ],
      );
  }
}
