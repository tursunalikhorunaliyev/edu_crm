import 'package:edu_crm/domen/entity/c_physical_face/c_physical_face_model.dart';
import 'package:edu_crm/domen/entity/organization/organization_model.dart';
import 'package:edu_crm/domen/entity/stuffcategory/category_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pyhsical_stuff_model.g.dart';

@JsonSerializable()
class PhysicalStuffModel {
  final int id;
  final OrganizationModel organizationModels;
  final CPhysicalFaceModel physicalFace;
  final DateTime startDate;
  final CategoryModel stuffCategory;

  PhysicalStuffModel({
    required this.id,
    required this.organizationModels,
    required this.physicalFace,
    required this.startDate,
    required this.stuffCategory,
  });
  factory PhysicalStuffModel.fromJson(Map<String, dynamic> json) =>
      _$PhysicalStuffModelFromJson(json);
  Map<String, dynamic> toJson() => _$PhysicalStuffModelToJson(this);
}
