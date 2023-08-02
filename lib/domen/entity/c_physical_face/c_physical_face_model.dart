import 'package:edu_crm/domen/entity/education_level/education_level.dart';
import 'package:edu_crm/domen/entity/interests/interests_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'c_physical_face_model.g.dart';

@JsonSerializable()
class CPhysicalFaceModel {
  final String address;
  final DateTime birthday;
  final EducationLevel educationLevel;
  final String firstName;
  final int id;
  final String instagramUsername;
  final List<InterestsModel> interestsModel;
  final String lastName;
  final String middleName;
  final String personalIdentification;
  final String photo;
  final String primaryPhone;
  final String secondaryPhone;
  final String telegramUsername;

  CPhysicalFaceModel({
    required this.address,
    required this.birthday,
    required this.educationLevel,
    required this.firstName,
    required this.id,
    required this.instagramUsername,
    required this.interestsModel,
    required this.lastName,
    required this.middleName,
    required this.personalIdentification,
    required this.photo,
    required this.primaryPhone,
    required this.secondaryPhone,
    required this.telegramUsername,
  });
  factory CPhysicalFaceModel.fromJson(Map<String, dynamic> json) =>
      _$CPhysicalFaceModelFromJson(json);
  Map<String, dynamic> toJson() => _$CPhysicalFaceModelToJson(this);
}
