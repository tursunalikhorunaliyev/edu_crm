// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_sub_subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationSubSubjectModel _$OrganizationSubSubjectModelFromJson(
        Map<String, dynamic> json) =>
    OrganizationSubSubjectModel(
      id: json['id'] as int,
      subSubject: OrganizationSubjectModel.fromJson(
          json['subSubject'] as Map<String, dynamic>),
      imageStore: json['imageStore'] as String,
      organization: OrganizationModel.fromJson(
          json['organization'] as Map<String, dynamic>),
      description: json['description'] as String,
      subject: OrganizationSubjectModel.fromJson(
          json['subject'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationSubSubjectModelToJson(
        OrganizationSubSubjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subSubject': instance.subSubject,
      'imageStore': instance.imageStore,
      'organization': instance.organization,
      'description': instance.description,
      'subject': instance.subject,
    };
