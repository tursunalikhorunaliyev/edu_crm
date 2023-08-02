// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'c_physical_face_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CPhysicalFaceModel _$CPhysicalFaceModelFromJson(Map<String, dynamic> json) =>
    CPhysicalFaceModel(
      address: json['address'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      educationLevel: EducationLevel.fromJson(
          json['educationLevel'] as Map<String, dynamic>),
      firstName: json['firstName'] as String,
      id: json['id'] as int,
      instagramUsername: json['instagramUsername'] as String,
      interestsModel: (json['interestsModel'] as List<dynamic>)
          .map((e) => InterestsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastName: json['lastName'] as String,
      middleName: json['middleName'] as String,
      personalIdentification: json['personalIdentification'] as String,
      photo: json['photo'] as String,
      primaryPhone: json['primaryPhone'] as String,
      secondaryPhone: json['secondaryPhone'] as String,
      telegramUsername: json['telegramUsername'] as String,
    );

Map<String, dynamic> _$CPhysicalFaceModelToJson(CPhysicalFaceModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'birthday': instance.birthday.toIso8601String(),
      'educationLevel': instance.educationLevel,
      'firstName': instance.firstName,
      'id': instance.id,
      'instagramUsername': instance.instagramUsername,
      'interestsModel': instance.interestsModel,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'personalIdentification': instance.personalIdentification,
      'photo': instance.photo,
      'primaryPhone': instance.primaryPhone,
      'secondaryPhone': instance.secondaryPhone,
      'telegramUsername': instance.telegramUsername,
    };
