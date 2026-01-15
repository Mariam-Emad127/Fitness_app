// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'] as String,
      username: json['name'] as String?,
      email: json['email'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      age: json['age'] as String?,
      photo: json['photo'] as String?,
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
