// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pyhsical_stuff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhysicalStuffModel _$PhysicalStuffModelFromJson(Map<String, dynamic> json) =>
    PhysicalStuffModel(
      id: json['id'] as int,
      organizationModels: OrganizationModel.fromJson(
          json['organizationModels'] as Map<String, dynamic>),
      physicalFace: CPhysicalFaceModel.fromJson(
          json['physicalFace'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      stuffCategory:
          CategoryModel.fromJson(json['stuffCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhysicalStuffModelToJson(PhysicalStuffModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organizationModels': instance.organizationModels,
      'physicalFace': instance.physicalFace,
      'startDate': instance.startDate.toIso8601String(),
      'stuffCategory': instance.stuffCategory,
    };
