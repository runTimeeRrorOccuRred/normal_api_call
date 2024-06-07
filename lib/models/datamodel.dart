
import 'dart:convert';
class DataModel
{
  final String serviceName;
  final String name;
  final String phone;
  final String eventDate;


  DataModel({
    required this.serviceName,
    required this.name,
    required this.phone,
    required this.eventDate
  });
  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(

    serviceName: json['data'][0]['service_name'],
    name: json['data'][0]['vendor_name'],
    phone: json['data'][0]['vendor_mobile_number'],
    eventDate: json['data'][0]['created_at'],
  );


  // Map<String, dynamic> toJson() => {
  //   "userId": userId,
  //   "id": id,
  //   "title": title,
  //   "body": body,
  // };

}