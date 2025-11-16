import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart'; // مهم عشان يولد الكود

@JsonSerializable()
class UserModel {
 final String uid;
final  String ?username
;
final  String ?email;
final  String ?height;
final  String ?weight;
final  String ?age;
final  String? photo; 

  UserModel({required this.uid, required this.username, required this.email,
   required this.height, required this.weight, required this.age, required this.photo});

  /// fromJson
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);


  /// toJson
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}