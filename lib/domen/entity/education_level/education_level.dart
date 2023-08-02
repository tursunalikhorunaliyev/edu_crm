import 'package:json_annotation/json_annotation.dart';
part 'education_level.g.dart';

@JsonSerializable()
class EducationLevel {
  final int id;
  final String name;

  EducationLevel({required this.id, required this.name});

  factory EducationLevel.fromJson(Map<String, dynamic> json) =>
      _$EducationLevelFromJson(json);

  Map<String, dynamic> toJson() => _$EducationLevelToJson(this);
}
