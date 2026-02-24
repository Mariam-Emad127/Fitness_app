 
import 'package:dio/dio.dart';
import 'package:fitness/core/helper/shared_pref_helper.dart';

class NotificationFunction{
String ?name;
Dio dio=Dio();
Future sendnotification()async{
  try{
name=await SharedPrefHelper.getString( "name");


dio.options.headers={
  "Content-Type": "application/json", 
    "Authorization": "Bearer f4e75a6d3d13697f209a9292897ea87fe6fa95ef"};



dio.post("https://fcm.googleapis.com/v1/projects/fitness-7238c/messages:send",
data: {
  //jsonEncode(
   "message":{
    "to":name  ,
    "notification": {
      "title": "رسالة جديدة",
      "body":  "55555555"
    }
  }
  //),
  
  } );

//f4e75a6d3d13697f209a9292897ea87fe6fa95ef

print( "siiiiiiiiiiiiiiiiiii");
  }catch(e){print( "vvvvvvvvvvvvvvv$e");}


}


}