import 'dart:typed_data';

import 'package:edu_badge_textfield/edu_badge_textfield.dart';
import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/view/widgets/edu_datepicker_field.dart';
import 'package:edu_drop_down/edu_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class NewFacePart extends StatefulWidget {
  const NewFacePart({super.key});

  @override
  State<NewFacePart> createState() => _NewFacePartState();
}

class _NewFacePartState extends State<NewFacePart> {
  Uint8List? _image;

  Future getImage() async {
    final image = await ImagePickerWeb.getImageAsBytes();
    if (image == null) return;
    final imageTemporary = image;
    _image = imageTemporary;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
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
                          SizedBox(height: 20),
                          EduBadgeText(text: "Otasini ismi"),
                          SizedBox(height: 6),
                          EduTextfield(width: 460 / 1.5),
                          SizedBox(height: 20),
                          EduBadgeText(
                              text: "Pasport Seriasi", isRequired: true),
                          SizedBox(height: 6),
                          EduTextfield(width: 460 / 1.5),
                          SizedBox(height: 20),
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
                          SizedBox(height: 20),
                          EduBadgeText(
                            text: "Telefon raqami (Qo’shimcha)",
                            isRequired: true,
                          ),
                          SizedBox(height: 6),
                          EduTextfield(
                            width: 460 / 1.5,
                            hintText: "+998",
                          ),
                          SizedBox(height: 20),
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
                          SizedBox(height: 20),
                          EduBadgeText(
                              text: "Tug'ulgan sanasi", isRequired: true),
                          SizedBox(height: 6),
                          EduDataPickerField(
                            width: 460 / 1.5,
                            height: 40,
                          ),
                          SizedBox(height: 20),
                          EduBadgeText(text: "Yashash manzili"),
                          SizedBox(height: 6),
                          EduTextfield(width: 460 / 1.5),
                          SizedBox(height: 20),
                          EduBadgeText(
                            text: "Telefon raqami (Asosiy)",
                            isRequired: true,
                          ),
                          SizedBox(height: 6),
                          EduTextfield(
                            width: 460 / 1.5,
                            hintText: "+998",
                          ),
                          SizedBox(height: 20),
                          EduBadgeText(text: "Telegram username"),
                          SizedBox(height: 6),
                          EduTextfield(width: 460 / 1.5),
                        ],
                      ),
                      Column(
                        children: [
                          _image == null
                              ? Container(
                                  alignment: Alignment.center,
                                  width: 430 / 1.4,
                                  height: 368 / 1.4,
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
                                )
                              : Container(
                                  width: 430 / 1.4,
                                  height: 368 / 1.4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: MemoryImage(_image!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              getImage();
                            },
                            child: const EduButton(
                              verticalPadding: 10,
                              horizontalPadding: 156 / 1.5,
                              containerColor: Color(0xFF10B981),
                              text: "Rasm tanlash",
                              textColor: Colors.white,
                            ),
                          ),
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
    );
  }
}
