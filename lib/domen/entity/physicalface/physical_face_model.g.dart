// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_face_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhysicalFaceModel _$PhysicalFaceModelFromJson(Map<String, dynamic> json) =>
    PhysicalFaceModel(
      json['address'] as String,
      DateTime.parse(json['birthday'] as String),
      EducationLevel.fromJson(json['educationLevel'] as Map<String, dynamic>),
      json['firstName'] as String,
      json['id'] as int,
      json['instagramUsername'] as String,
      (json['interests'] as List<dynamic>)
          .map((e) => InterestsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['lastName'] as String,
      json['middleName'] as String,
      json['personalIdentification'] as String,
      json['photo'] as String,
      json['primaryPhone'] as String,
      json['secondaryPhone'] as String,
      json['telegramUsername'] as String,
    );

Map<String, dynamic> _$PhysicalFaceModelToJson(PhysicalFaceModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'birthday': instance.birthday.toIso8601String(),
      'educationLevel': instance.educationLevel,
      'firstName': instance.firstName,
      'id': instance.id,
      'instagramUsername': instance.instagramUsername,
      'interests': instance.interests,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'personalIdentification': instance.personalIdentification,
      'photo': instance.photo,
      'primaryPhone': instance.primaryPhone,
      'secondaryPhone': instance.secondaryPhone,
      'telegramUsername': instance.telegramUsername,
    };
