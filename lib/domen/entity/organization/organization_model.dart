import 'package:json_annotation/json_annotation.dart';

part 'organization_model.g.dart';

@JsonSerializable()
class OrganizationModel {
  final String address;
  final String email;
  @JsonKey(name: "gnumber")
  final String gNumber;
  final int id;
  final String image;
  final String inn;
  final String name;
  final String tel1;
  final String tel2;

  OrganizationModel({
    required this.address,
    required this.email,
    required this.gNumber,
    required this.id,
    required this.image,
    required this.inn,
    required this.name,
    required this.tel1,
    required this.tel2,
  });
  factory OrganizationModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrganizationModelToJson(this);
}
