import 'package:edu_crm/domen/entity/education_level/education_level.dart';
import 'package:edu_crm/domen/entity/interests/interests_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'physical_face_model.g.dart';

@JsonSerializable()
class PhysicalFaceModel {
  final String address;
  final DateTime birthday;
  final EducationLevel educationLevel;
  final String firstName;
  final int id;
  final String instagramUsername;
  final List<InterestsModel> interests;
  final String lastName;
  final String middleName;
  final String personalIdentification;
  final String photo;
  final String primaryPhone;
  final String secondaryPhone;
  final String telegramUsername;

  PhysicalFaceModel(
    this.address,
    this.birthday,
    this.educationLevel,
    this.firstName,
    this.id,
    this.instagramUsername,
    this.interests,
    this.lastName,
    this.middleName,
    this.personalIdentification,
    this.photo,
    this.primaryPhone,
    this.secondaryPhone,
    this.telegramUsername,
  );

  factory PhysicalFaceModel.fromJson(Map<String, dynamic> json) =>
      _$PhysicalFaceModelFromJson(json);
  Map<String, dynamic> toJson() => _$PhysicalFaceModelToJson(this);
}
