import 'dart:convert';
import 'dart:js';

//import 'package:bloc_with_apis/demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import '../models/post_data_ui_model.dart';
import 'package:http/http.dart' as http;
import 'package:model_practise/models/datamodel.dart';
import 'package:model_practise/view/show.dart';

import '../main.dart';
class PostRepo {
  static Future fetchPost() async {
    var client = http.Client();
    try {
      var response = await client.post(
          //Uri.parse('https://manage.chaalakya.com/api/my-booking-list?user_id=3'));
     // var response=await client.get(Uri.parse("https://alembicpharmaceuticals.scriptrix.net/public/api/anc/418/1"));

       Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      var json = "[${response.body}]";

      List result = jsonDecode(json);
      print(("the length of the json is:-"));
      print(result.length);
      List<DataModel> data=[];
      for(var i in result)
        {
          DataModel dataModel=DataModel.fromJson(i);
          data.add(dataModel);

        }
      print(data.length);
      return data;



    }
    catch (e) {
      e.toString();
      return [];
    }
  }
}