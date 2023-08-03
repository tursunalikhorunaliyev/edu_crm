import 'package:json_annotation/json_annotation.dart';

part 'organization_subject_model.g.dart';

@JsonSerializable()
class OrganizationSubjectModel {
  final int id;
  final String name;

  OrganizationSubjectModel(this.id, this.name);

  factory OrganizationSubjectModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationSubjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationSubjectModelToJson(this);
}
