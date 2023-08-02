// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationModel _$OrganizationModelFromJson(Map<String, dynamic> json) =>
    OrganizationModel(
      address: json['address'] as String,
      email: json['email'] as String,
      gNumber: json['gnumber'] as String,
      id: json['id'] as int,
      image: json['image'] as String,
      inn: json['inn'] as String,
      name: json['name'] as String,
      tel1: json['tel1'] as String,
      tel2: json['tel2'] as String,
    );

Map<String, dynamic> _$OrganizationModelToJson(OrganizationModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'gnumber': instance.gNumber,
      'id': instance.id,
      'image': instance.image,
      'inn': instance.inn,
      'name': instance.name,
      'tel1': instance.tel1,
      'tel2': instance.tel2,
    };
