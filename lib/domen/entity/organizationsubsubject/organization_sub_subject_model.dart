import 'package:edu_crm/domen/entity/organization/organization_model.dart';
import 'package:edu_crm/domen/entity/organizationsubject/organization_subject_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'organization_sub_subject_model.g.dart';

@JsonSerializable()
class OrganizationSubSubjectModel {
  final int id;
  final OrganizationSubjectModel subSubject;
  final String imageStore;
  final OrganizationModel organization;
  final String description;
  final OrganizationSubjectModel subject;

  OrganizationSubSubjectModel({
    required this.id,
    required this.subSubject,
    required this.imageStore,
    required this.organization,
    required this.description,
    required this.subject,
  });

  factory OrganizationSubSubjectModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationSubSubjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationSubSubjectModelToJson(this);
}
