import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:model_practise/models/datamodel.dart';
import 'package:model_practise/second.dart';
import 'package:model_practise/services/apicall.dart';
import 'package:model_practise/view/show.dart';
void main()
{
  runApp(MaterialApp(home: Home(),));
}
class Home extends StatefulWidget {


   Home({Key? key}) : super(key: key);


  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   List<DataModel> dataValue=[];
   bool show=false;
  @override
  void initState()
  {
    super.initState();
    PostRepo.fetchPost().then((value) {
      print(value);
      setState(() {
        dataValue!.addAll(value);
        print(dataValue.length);


      });
    });
  }
  Widget build(BuildContext context) {
if(dataValue.length!=0)
  {
    show=true;
    setState(() {

    });
  }
    return Scaffold(
      appBar: AppBar(title: Text("User Information"),
      centerTitle: true,),
      body: Column(
        children: [
          // ElevatedButton(onPressed: (){
          //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
          // }, child: Text("click")),
           show?Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Text("Service Name",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),),
              SizedBox(width: 10,),
              Text('Name',style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),),
              SizedBox(width: 10,),
              Text('Phone',style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),),
              SizedBox(width: 10,),
              Text("Event Date",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),)
            ],
          ):SizedBox(),
          Flexible(
            child: ListView.builder(

                itemCount: dataValue.length,

                itemBuilder: (context,index)
            {

             return Container(
               padding: EdgeInsets.only(top: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text(dataValue[index].serviceName),
                   const SizedBox(width: 10,),
                   Text(dataValue[index].name),
                  const SizedBox(width: 10,),
                   Text(dataValue[index].phone),
                   const SizedBox(width: 10,),
                   Text(dataValue[index].eventDate.substring(0,10))
                 ],
               ),
             );




            }),
          ),
        ],
      )
    );
  }
}
