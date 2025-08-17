import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart'; // مهم عشان يولد الكود

@JsonSerializable()
class User {
 final String id;
final  String name;
final  String email;
final  String height;
final  String weight;
final  String age;
final  String photoUrl; 

  User({required this.id, required this.name, required this.email, required this.height, required this.weight, required this.age, required this.photoUrl});

  /// fromJson
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);


  /// toJson
  Map<String, dynamic> toJson() => _$UserToJson(this);
}