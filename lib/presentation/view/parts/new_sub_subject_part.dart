import 'package:dotted_border/dotted_border.dart';
import 'package:edu_badge_textfield/edu_badge_textfield.dart';
import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/view/widgets/edu_datepicker_field.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:edu_drop_down/edu_drop_down.dart';
import 'package:edu_search_table_drop_down/controllers/models/search_model.dart';
import 'package:edu_search_table_drop_down/edu_search_table_drop_down.dart';
import 'package:flutter/material.dart';

class NewSubSubjectPart extends StatelessWidget {
  const NewSubSubjectPart({super.key});

  @override
  Widget build(BuildContext context) {
    List<SearchModel> list = [
      SearchModel(id: 1, name: "name"),
      SearchModel(id: 2, name: "mane"),
      SearchModel(id: 3, name: "patd"),
    ];
    return Scaffold(
      body: Center(
        child: Container(
          width: 850 / 1.5,
          height: 1000 / 1.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EduButton(
                      verticalPadding: 6,
                      horizontalPadding: 20,
                      text: "Saqlash",
                      containerColor: Color(0xFF5D5FEF),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const EduBadgeText(
                          text: "Fan",
                          textStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontFamily: "Inter",
                            fontWeight: medium,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 6),
                        EduSearchTableDropDown(
                          searchModelList: list,
                          width: 250,
                          dropDownHeight: 200,
                        ),
                        const SizedBox(height: 30),
                        const EduBadgeText(
                          text: "Ochilgan sana",
                          textStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontFamily: "Inter",
                            fontWeight: medium,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const EduDataPickerField(
                          text: "08.07.2023",
                          width: 250,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const EduBadgeText(
                          text: "Yo'nalish",
                          textStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontFamily: "Inter",
                            fontWeight: medium,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 6),
                        EduSearchTableDropDown(
                          searchModelList: list,
                          width: 250,
                          dropDownHeight: 200,
                        ),
                        const SizedBox(height: 30),
                        const EduBadgeText(
                          text: "Yo'nalish",
                          textStyle: TextStyle(
                            color: Color(0xFFA6A6A6),
                            fontFamily: "Inter",
                            fontWeight: medium,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const EduDataPickerField(
                          text: "08.07.2023",
                          width: 250,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 40 / 1.5),
                const EduBadgeText(
                  text: "Qizqacha ma'lumot",
                  textStyle: TextStyle(
                    color: Color(0xFFA6A6A6),
                    fontFamily: "Inter",
                    fontWeight: medium,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  height: 144 / 1.5,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFE2E8F0),
                    ),
                  ),
                ),
                const SizedBox(height: 40 / 1.5),
                DottedBorder(
                  color: const Color(0xFF5D5FEF),
                  //color of dotted/dash line
                  strokeWidth: 1,
                  //thickness of dash/dots
                  dashPattern: [10, 6],
                  radius: const Radius.circular(6),
                  child: Container(
                    alignment: Alignment.center,
                    height: 340 / 1.5,
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFCCD3DB),
                        ),
                      ),
                      child: const Text(
                        "Rasmni tanlang",
                        style: TextStyle(
                          color: Color(0xFF726BEA),
                          fontSize: 18,
                          fontFamily: "Inter",
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
