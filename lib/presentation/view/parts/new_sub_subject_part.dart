import 'package:edu_badge_textfield/edu_badge_textfield.dart';
import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/view/widgets/edu_datepicker_field.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:edu_drop_down/edu_drop_down.dart';
import 'package:flutter/material.dart';

class NewSubSubjectPart extends StatelessWidget {
  const NewSubSubjectPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 800 / 1.5,
        height: 1000 / 1.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                      EduBadgeText(
                        text: "Fan",
                        textStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: "Inter",
                          fontWeight: medium,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 6),
                      EduDropDown(
                        width: 230,
                        elements: [],
                        contentGap: 6,
                        isDate: true,
                        dateList: [
                          "Malumotni tanlang",
                          "Oliy",
                          "O'rta maxsus",
                          "Bakalavr",
                        ],
                      ),
                      SizedBox(height: 30),
                      EduBadgeText(
                        text: "Ochilgan sana",
                        textStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: "Inter",
                          fontWeight: medium,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 6),
                      EduDataPickerField(text: "08.07.2023", width: 230),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EduBadgeText(
                        text: "Yo'nalish",
                        textStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: "Inter",
                          fontWeight: medium,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 6),
                      EduDropDown(
                        width: 230,
                        elements: [],
                        contentGap: 6,
                        isDate: true,
                        dateList: [
                          "Malumotni tanlang",
                          "Oliy",
                          "O'rta maxsus",
                          "Bakalavr",
                        ],
                      ),
                      SizedBox(height: 30),
                      EduBadgeText(
                        text: "Yo'nalish",
                        textStyle: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontFamily: "Inter",
                          fontWeight: medium,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 6),
                      EduDataPickerField(
                        text: "08.07.2023",
                        width: 230,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
