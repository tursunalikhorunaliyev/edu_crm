import 'package:edu_badge_textfield/edu_badge_textfield.dart';
import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/view/widgets/edu_datepicker_field.dart';
import 'package:edu_crm/presentation/view/widgets/search.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:edu_drop_down/edu_drop_down.dart';
import 'package:edu_selectable_part/edu_selectable_part.dart';
import 'package:flutter/material.dart';

class PhysicalStuffPart extends StatelessWidget {
  const PhysicalStuffPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hodimlar",
                    style: TextStyle(
                      fontFamily: "Inter",
                      color: Color(0xFF1E293B),
                      fontSize: 24 / 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Search(hinText: "Hodimlar bo’yicha qidirish"),
                      SizedBox(width: 10),
                      EduButton(
                        verticalPadding: 12 / 1.5,
                        horizontalPadding: 8,
                        buttonWithLeftIcon: true,
                        containerColor: Color(0xFF10B981),
                        text: "Yangi hodim",
                        iconPath: "assets/icons/Add_Plus.png",
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: EduSelectablePart(
                      tappedButtonTextStyle: const TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: medium,
                      ),
                      isContainer: true,
                      height: 30,
                      textStyle: const TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        color: Color(0xFF4D515A),
                        fontWeight: medium,
                      ),
                      onChanged: (index) {
                        print(index);
                      },
                      padding: 16,
                      elements: const [
                        "Barchasi",
                        "O'qituvchilar",
                        "Yordamchi o'qituvchilar",
                        "Administratorlar",
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: 448,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Jismoniy shahslarni lavozimga ta’yinlash",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 18,
                                    color: Color(0xFF344054),
                                  ),
                                ),
                              ),
                              AlertDialog(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                content: Material(
                                  child: Container(
                                    width: 600 / 1.5,
                                    height: 600 / 1.5,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 20,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Jismoniy shahslar",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 12,
                                                  color: Color(0xFF344054),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              EduDropDown(
                                                elements: eduDropDownModelList,
                                                dateList: const [
                                                  "Tursunali Xorinaliyev Xaydaraliyevich",
                                                  "Alik",
                                                  "Nima",
                                                  "qale"
                                                ],
                                                isDate: true,
                                                width: double.infinity,
                                                contentGap: 6,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Jismoniy shahslar",
                                                style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontSize: 12,
                                                  color: Color(0xFF344054),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              EduDropDown(
                                                elements: eduDropDownModelList,
                                                dateList: const [
                                                  "O'qituvchilar",
                                                  "Alik",
                                                  "Nima",
                                                  "qale"
                                                ],
                                                isDate: true,
                                                width: double.infinity,
                                                contentGap: 6,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const EduBadgeText(
                                              text: "Sanadan boshlab"),
                                          const SizedBox(height: 6),
                                          const Expanded(
                                            child: EduDataPickerField(
                                              width: double.infinity,
                                            ),
                                          ),
                                          const EduBadgeText(text: "Sanagacha"),
                                          const SizedBox(height: 6),
                                          const Expanded(
                                            child: EduDataPickerField(
                                              width: double.infinity,

                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                onTap: () =>
                                                    Navigator.of(context).pop(),
                                                child: const EduButton(
                                                  verticalPadding: 12 / 1.5,
                                                  horizontalPadding: 8,
                                                  containerColor:
                                                      Color(0xFFDBDBDB),
                                                  text: "Bekor qilish",
                                                  textColor: Color(0xFF344054),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              InkWell(
                                                onTap: () {},
                                                child: const EduButton(
                                                  verticalPadding: 12 / 1.5,
                                                  horizontalPadding: 8,
                                                  containerColor:
                                                      Color(0xFF10B981),
                                                  text: "Biriktirish",
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const EduButton(
                      verticalPadding: 12 / 1.5,
                      horizontalPadding: 8,
                      buttonWithLeftIcon: true,
                      containerColor: Color(0xFF7364FF),
                      text: "Lavozimga taynlash",
                      iconPath: "assets/icons/Add_Plus.png",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 60, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Sahifasiga malumtotlar soni: 10",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: medium,
                    color: Color(0xFF64748B),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "1-10  87 ta dan",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: medium,
                    color: Color(0xFF64748B),
                  ),
                ),
                SizedBox(width: 20),
                EduButton(
                  verticalPadding: 14 / 1.5,
                  horizontalPadding: 12 / 1.5,
                  containerColor: Color(0xFFB4BFCD),
                  buttonWithLeftIcon: true,
                  text: "Oldingisi",
                  isBorder: true,
                  textColor: Color.fromARGB(255, 0, 0, 0),
                  iconPath: "assets/Arrow_Right_MD.png",
                ),
                SizedBox(width: 20),
                EduButton(
                  verticalPadding: 14 / 1.5,
                  horizontalPadding: 12 / 1.5,
                  containerColor: Color(0xFF5D5FEF),
                  buttonWithRightIcon: true,
                  text: "Keyingisi",
                  isBorder: true,
                  textColor: Color.fromARGB(255, 0, 0, 0),
                  iconPath: "assets/Arrow_Left_MD.png",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
