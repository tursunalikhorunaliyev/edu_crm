import 'package:edu_badge_textfield/edu_badge_textfield.dart';
import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/view/widgets/edu_datepicker_field.dart';
import 'package:edu_crm/presentation/view/widgets/path_widget.dart';
import 'package:edu_drop_down/edu_drop_down.dart';
import 'package:flutter/material.dart';

class NewFacePart extends StatelessWidget {
  const NewFacePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 39.0 / 1.5, left: 30 / 1.5),
        child: Column(
          children: [
            const SizedBox(
              height: 25 / 1.5,
              child: PathWidget(
                elements: ["Home", "Ichki tizim", "Hodimlar"],
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fan va yo'nalishlar",
                  style: TextStyle(
                    fontFamily: "Inter",
                    color: Color(0xFF1E293B),
                    fontSize: 24 / 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                EduButton(
                  verticalPadding: 12 / 1.5,
                  horizontalPadding: 8,
                  containerColor: Color(0xFF5D5FEF),
                  text: "Saqlash",
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 38,
                vertical: 48,
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 45, horizontal: 29),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EduBadgeText(text: "Ismi", isRequired: true),
                            SizedBox(height: 6),
                            EduTextfield(width: 460 / 1.5),
                            SizedBox(height: 30),
                            EduBadgeText(text: "Otasini ismi"),
                            SizedBox(height: 6),
                            EduTextfield(width: 460 / 1.5),
                            SizedBox(height: 30),
                            EduBadgeText(
                                text: "Pasport Seriasi", isRequired: true),
                            SizedBox(height: 6),
                            EduTextfield(width: 460 / 1.5),
                            SizedBox(height: 30),
                            EduBadgeText(text: "Malumoti", isRequired: true),
                            SizedBox(height: 6),
                            EduDropDown(
                              width: 460 / 1.5,
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
                              text: "Telefon raqami (Qo’shimcha)",
                              isRequired: true,
                            ),
                            SizedBox(height: 6),
                            EduTextfield(
                              width: 460 / 1.5,
                              hintText: "+998",
                            ),
                            SizedBox(height: 30),
                            EduBadgeText(
                              text: "Instagram (username)",
                              isRequired: true,
                            ),
                            SizedBox(height: 6),
                            EduTextfield(
                              width: 460 / 1.5,
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EduBadgeText(text: "Familyasi", isRequired: true),
                            SizedBox(height: 6),
                            EduTextfield(width: 460 / 1.5),
                            SizedBox(height: 30),
                            EduBadgeText(
                                text: "Tug'ulgan sanasi", isRequired: true),
                            SizedBox(height: 6),
                            EduDataPickerField(
                              width: 460 / 1.5,
                              text: "MM / DD / YYYY",
                              height: 40,
                            ),
                            SizedBox(height: 30),
                            EduBadgeText(text: "Yashash manzili"),
                            SizedBox(height: 6),
                            EduTextfield(width: 460 / 1.5),
                            SizedBox(height: 30),
                            EduBadgeText(
                              text: "Telefon raqami (Asosiy)",
                              isRequired: true,
                            ),
                            SizedBox(height: 6),
                            EduTextfield(
                              width: 460 / 1.5,
                              hintText: "+998",
                            ),
                            SizedBox(height: 30),
                            EduBadgeText(text: "Telegram username"),
                            SizedBox(height: 6),
                            EduTextfield(width: 460 / 1.5),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 430,
                              height: 368,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF0F0FF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "Hodim rasmi",
                                style: TextStyle(
                                  color: Color(0XFF1E293B),
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 32,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            const EduButton(
                              verticalPadding: 14,
                              horizontalPadding: 156,
                              containerColor: Color(0xFF10B981),
                              text: "Rasm tanlash",
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
