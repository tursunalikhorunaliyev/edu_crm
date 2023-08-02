import 'package:edu_crm/domen/entity/login/login_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'interests_model.g.dart';

@JsonSerializable()
class InterestsModel {
  final int id;
  final String name;

  InterestsModel({required this.id, required this.name});
  factory InterestsModel.fromJson(Map<String, dynamic> json) =>
      _$InterestsModelFromJson(json);
  Map<String, dynamic> toJson() => _$InterestsModelToJson(this);
}
