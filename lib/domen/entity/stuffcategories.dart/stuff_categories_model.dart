import 'package:edu_crm/domen/entity/stuffcategory/category_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'stuff_categories_model.g.dart';

@JsonSerializable()
class StuffCategories {
  final CategoryModel category;
  final int countFaaces;

  StuffCategories({required this.category, required this.countFaaces});
  factory StuffCategories.fromJson(Map<String, dynamic> json) =>
      _$StuffCategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$StuffCategoriesToJson(this);
}
