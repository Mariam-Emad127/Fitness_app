 
//import 'package:hive_flutter/hive_flutter.dart';

//part 'message_model.g.dart';
 

//@HiveType(typeId: 0)
class MessageModel     {
  //@HiveField(0)
  final String type;
 // @HiveField(1)
  final String msgContent;
  //@HiveField(2)
  final String sender;
  //@HiveField(3)
  final String reciver;
  //@HiveField(4)
  final String time;
  MessageModel({
    required this.type,
    required this.msgContent,
    required this.sender,
    required this.reciver,
    required this.time,
  });

  // Factory method لتحويل الـ Map إلى كائن MessagesModel
  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      type: json["type"] ?? "",
      msgContent: json["message"] ?? "",
      sender: json["sender"] ?? "",
      reciver: json["reciver"] ?? "",
      time: json["time"] ?? "",
    );
  }
   Map<String, dynamic> toJson() {
    return {
      "type": type,
      "message": msgContent,
      "sender": sender,
      "reciver": reciver,
      "time": time,
    };
}
}