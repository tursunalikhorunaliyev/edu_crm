import 'package:edu_drop_down/controller/model/edu_drop_down_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> eCommorceTexts = [
  "Orders",
  "Customers",
  "Invoices",
  "Invoices",
];
List<String> fanVaYonalishlar = [];
List<String> bosh = [];

Color color1 = const Color(0xFFE0E7FF);
Color color2 = const Color(0xFFE0F2FE);
Color color3 = const Color(0xFFE0F2FE);
Color color4 = const Color(0xFFE0F2FE);
Color color5 = const Color(0xFFFFE4E6);
Color color6 = const Color(0xFFDBEAFE);
Color color7 = const Color(0xFF334155);
Color color8 = const Color(0xFFF1F5F9);

const Color buttonColor1 = Color(0xFF5D5FEF);
const Color buttonColor2 = Color(0xFF4F46E5);
const Color buttonColor3 = Color(0xFFE2E8F0);

Color textColor1 = const Color(0xFF5D5FEF);
Color textColor2 = const Color(0xFF178DCC);
Color textColor3 = const Color(0xFF059691);
Color textColor4 = const Color(0xFFE07706);
Color textColor5 = const Color(0xFFE11D48);
Color textColor6 = const Color(0xFF4263EB);
Color textColor7 = const Color(0xFF64748B);
Color textColor8 = const Color(0xFFFFFFFF);

double small = 105;
double middle = 128;
double large = 168;

List<EduDropDownModel> eduDropDownModelList = [
  EduDropDownModel(
    imageUrl:
        "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
    name: "Bir Balo",
  ),
  EduDropDownModel(
    imageUrl:
        "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
    name: "Raxmatillo",
  ),
  EduDropDownModel(
    imageUrl:
        "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
    name: "Fignya",
  ),
  EduDropDownModel(
    imageUrl:
        "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",
    name: "salom",
  ),
];
const FontWeight regular = FontWeight.w400;
const FontWeight bold = FontWeight.bold;
const FontWeight extraLight = FontWeight.w200;
const FontWeight light = FontWeight.w300;
const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;
const FontWeight extraBold = FontWeight.w800;
const FontWeight black = FontWeight.w900;

const TextStyle sideBarButton = TextStyle(
  color: Color(0xFF3B424A),
  fontWeight: medium,
  fontSize: 16,
);
