import 'package:flutter/material.dart';
import 'package:model_practise/models/datamodel.dart';
class Show extends StatefulWidget {
  DataModel? dataModel;
  Show({this.dataModel,Key? key}) : super(key: key);

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  @override

  Widget build(BuildContext context) {
    print("hi there");
    // print(widget.dataModel!.title);
     return Text("widget.dataModel!.title");
  }
}
