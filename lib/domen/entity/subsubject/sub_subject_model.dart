import 'package:json_annotation/json_annotation.dart';

part 'sub_subject_model.g.dart';

@JsonSerializable()
class SubSubjectModel {
  final int id;
  final String name;

  SubSubjectModel({
    required this.id,
    required this.name,
  });

  factory SubSubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubSubjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubSubjectModelToJson(this);
}
