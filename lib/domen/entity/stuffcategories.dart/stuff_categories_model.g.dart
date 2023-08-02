// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stuff_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StuffCategories _$StuffCategoriesFromJson(Map<String, dynamic> json) =>
    StuffCategories(
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      countFaaces: json['countFaaces'] as int,
    );

Map<String, dynamic> _$StuffCategoriesToJson(StuffCategories instance) =>
    <String, dynamic>{
      'category': instance.category,
      'countFaaces': instance.countFaaces,
    };
