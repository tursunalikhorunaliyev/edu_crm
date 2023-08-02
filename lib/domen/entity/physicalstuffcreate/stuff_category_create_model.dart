import 'package:json_annotation/json_annotation.dart';
part 'stuff_category_create_model.g.dart';

@JsonSerializable()
class CreateModel {
  final String message;
  final bool status;

  CreateModel(this.message, this.status);
  factory CreateModel.fromJson(Map<String, dynamic> json) =>
      _$CreateModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreateModelToJson(this);
}
