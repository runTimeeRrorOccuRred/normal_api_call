import 'package:flutter/material.dart';
import 'package:model_practise/models/datamodel.dart';
class View extends StatefulWidget {
  DataModel? dataModel;
  View({this.dataModel,Key? key}) : super(key: key);

  @override
  State<View> createState() => _ShowState();
}

class _ShowState extends State<View> {
  @override

  Widget build(BuildContext context) {
    return Text("widget.dataModel!.title");
  }
}
