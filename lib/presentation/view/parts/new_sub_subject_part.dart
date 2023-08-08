import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:edu_badge_textfield/edu_badge_textfield.dart';
import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/controller/blocs/subjects/subject_bloc.dart';
import 'package:edu_crm/presentation/view/widgets/edu_datepicker_field.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:edu_search_table_drop_down/controllers/models/search_model.dart';
import 'package:edu_search_table_drop_down/edu_search_table_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:lottie/lottie.dart';

class NewSubSubjectPart extends StatefulWidget {
  const NewSubSubjectPart({super.key});

  @override
  State<NewSubSubjectPart> createState() => _NewSubSubjectPartState();
}

class _NewSubSubjectPartState extends State<NewSubSubjectPart> {
  final subjectsBloc = SubjectBloc();
  Uint8List? _image;

  Future getImage() async {
    final image = await ImagePickerWeb.getImageAsBytes();
    if (image == null) return;
    final imageTemporary = image;
    _image = imageTemporary;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subjectsBloc.add(SubjectAndSubSubjectsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SubjectBloc, SubjectState>(
          bloc: subjectsBloc,
          builder: (context, state) {
            return state is SubjectLoadingState
                ? Center(
                    child: Lottie.asset("lottie/loading.json",
                        width: 200, height: 200),
                  )
                : state is SubjectDataState
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 850 / 1.5,
                              height: 1000 / 1.5,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                            SizedBox(
                                              width: 250,
                                              child: EduSearchTableDropDown(
                                                searchModelList:
                                                    state.subjectData.map((e) {
                                                  return SearchModel(
                                                      id: e.id, name: e.name);
                                                }).toList(),
                                                contentHeight: 220,
                                                height: 34,
                                                hinText: "Fanni tanlang",
                                              ),
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
                                              height: 34,
                                              width: 250,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                            SizedBox(
                                              width: 250,
                                              child: EduSearchTableDropDown(
                                                searchModelList: state
                                                    .subSubjectList
                                                    .map((e) {
                                                  return SearchModel(
                                                      id: e.id, name: e.name);
                                                }).toList(),
                                                contentHeight: 220,
                                                height: 34,
                                                hinText: "Yo'nalishni tanlang",
                                              ),
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
                                              width: 250,
                                              height: 34,
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
                                    const SizedBox(height: 6),
                                    Container(
                                      height: 120 / 1.5,
                                      width: 800,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          width: 1,
                                          color: const Color(0xFFE2E8F0),
                                        ),
                                      ),
                                      child: TextFormField(
                                        maxLines: 4,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 40 / 1.5),
                                    _image == null
                                        ? DottedBorder(
                                            color: const Color(0xFF5D5FEF),
                                            strokeWidth: 1,
                                            dashPattern: const [10, 6],
                                            radius: const Radius.circular(6),
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 340 / 1.4,
                                              width: 800,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              ),
                                              child: InkWell(
                                                onTap: () {
                                                  getImage();
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 200 / 1.2,
                                                  height: 60 / 1.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: const Color(
                                                          0xFFCCD3DB),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    "Rasmni tanlang",
                                                    style: TextStyle(
                                                      color: Color(0xFF726BEA),
                                                      fontSize: 16,
                                                      fontFamily: "Inter",
                                                      fontWeight: medium,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container(
                                            alignment: Alignment.topRight,
                                            height: 340 / 1.4,
                                            width: 800,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              image: DecorationImage(
                                                image: MemoryImage(_image!),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: GestureDetector(
                                                onTap: () {
                                                  getImage();
                                                },
                                                child: Image.asset(
                                                  "assets/images/pensilk.png",
                                                  width: 24,
                                                  height: 24,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                            const Column(
                              children: [
                                EduButton(
                                  verticalPadding: 5,
                                  horizontalPadding: 15,
                                  text: "Saqlash",
                                  containerColor: Color(0xFF5D5FEF),
                                ),
                                Spacer(),
                              ],
                            ),
                          ],
                        ),
                      )
                    : const SizedBox();
          }),
    );
  }
}
