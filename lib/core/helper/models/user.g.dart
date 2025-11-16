// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  uid: json['uid'] as String,
  username: json['name']  ?.toString(),
  email: json['email']  ?.toString(),
  height: json['height'] ?.toString(),
  weight: json['weight']?.toString(),
  age: json['age'] ?.toString(),
  photo: json['photo']?.toString(),
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'uid': instance.uid,
  'username': instance.username,
  'email': instance.email,
  'height': instance.height,
  'weight': instance.weight,
  'age': instance.age,
  'photo': instance.photo,
};
