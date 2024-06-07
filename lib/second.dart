import 'package:flutter/material.dart';

import 'models/datamodel.dart';
class Second extends StatefulWidget {
 // final List<DataModel> lisData;
  const Second({Key? key, }) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    print("Second page");
    //print(widget.lisData.length);
    return Scaffold(
      appBar: AppBar(title: Text("second page"),),
    );
  }
}
