// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exresize_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExersizeModel _$ExersizeModelFromJson(Map<String, dynamic> json) =>
    ExersizeModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      bodyPart: json['bodyPart'] as String?,
      target: json['target'] as String?,
      equipment: json['equipment'] as String?,
      secondaryMuscles: (json['secondaryMuscles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      difficulty: json['difficulty'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$ExersizeModelToJson(ExersizeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bodyPart': instance.bodyPart,
      'target': instance.target,
      'equipment': instance.equipment,
      'secondaryMuscles': instance.secondaryMuscles,
      'instructions': instance.instructions,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'category': instance.category,
    };
