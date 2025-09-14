import 'package:freezed_annotation/freezed_annotation.dart';
part 'exresize_model.g.dart';
//lib\feature\exersize_page\data\model\exresize_model.dart
@JsonSerializable()

class ExersizeModel{
 String? id;
  String? name;
  String? bodyPart;
  String? target;
  String? equipment;
  List<String>? secondaryMuscles;
  List<String>? instructions;
  String? description;
  String? difficulty;
  String? category;
 
 ExersizeModel(
      {this.id,
      this.name,
      this.bodyPart,
      this.target,
      this.equipment,
      this.secondaryMuscles,
      this.instructions,
      this.description,
      this.difficulty,
      this.category});

factory ExersizeModel.fromJson(Map<String,dynamic>json)=>_$ExersizeModelFromJson(json);

}