import 'dart:math';

import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/controller/blocs/orgsubjects/org_subjects_bloc.dart';
import 'package:edu_crm/presentation/controller/blocs/orgsubjects/org_subjects_event.dart';
import 'package:edu_crm/presentation/controller/blocs/orgsubsubjects/org_sub_subjects_bloc.dart';
import 'package:edu_crm/presentation/view/widgets/subject_card.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:edu_selectable_part/edu_selectable_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SubSubjectPart extends StatefulWidget {
  const SubSubjectPart({super.key});

  @override
  State<SubSubjectPart> createState() => _SubSubjectPartState();
}

class _SubSubjectPartState extends State<SubSubjectPart> {
  final orgSubjectBloc = OrgSubjectsBloc();
  final orgSubSubjectsBloc = OrgSubSubjectsBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    orgSubjectBloc.add(OrgSubjectCategoryEvent());
    orgSubSubjectsBloc.add(OrgSubSubjectAllEvent());
  }

  @override
  Widget build(BuildContext context) {
    List<String> tabElements = ["Barchasi"];

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
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
              buttonWithLeftIcon: true,
              containerColor: Color(0xFF5D5FEF),
              text: "Yangi yonalish qo'shish",
              iconPath: "assets/icons/Add_Plus.png",
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        BlocBuilder<OrgSubjectsBloc, OrgSubjectsState>(
          bloc: orgSubjectBloc,
          builder: (context, state) {
            return state is OrgSubjectsLoadingState
                ? const Center(child: CircularProgressIndicator())
                : state is OrgSubjectsDataState
                    ? EduSelectablePart(
                        tappedButtonTextStyle: const TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14,
                          color: Color(0xFF5D5FEF),
                          fontWeight: medium,
                        ),
                        height: 20,
                        textStyle: const TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14,
                          color: Color(0xFF4D515A),
                          fontWeight: medium,
                        ),
                        elements: tabElements +
                            state.organizationSubjectList
                                .map((e) => e.name)
                                .toList(),
                        onChanged: (index) {
                          if(index == 0){
                            orgSubSubjectsBloc.add(OrgSubSubjectAllEvent());
                          }else{
                            orgSubSubjectsBloc.add(OrgSubSubjectGetBySubjectIdEvent(subjectId: state.organizationSubjectList[index-1].id));
                          }


                        },
                      )
                    : const SizedBox();
          },
        ),
        const SizedBox(height: 12),
        Expanded(
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: BlocBuilder<OrgSubSubjectsBloc, OrgSubSubjectsState>(
                bloc: orgSubSubjectsBloc,
                builder: (context, state) {
                  return state is OrgSubSubjectsLoadingState
                      ? const Center(child: CircularProgressIndicator())
                      : state is OrgSubSubjectDataState
                          ? MasonryGridView.builder(
                              // padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              physics: const BouncingScrollPhysics(),
                              crossAxisSpacing: 36,
                              mainAxisSpacing: 16,
                              itemCount:
                                  state.organizationSubSubjectData.length,
                              gridDelegate:
                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                              ),
                              itemBuilder: (context, index) {
                                //            debugPrint(state.organizationSubSubjectData[index].imageStore);
                                return SubjectCard(
                                  width: 300 / 1.2,
                                  text: state.organizationSubSubjectData[index]
                                      .subSubject.name,
                                  longText: state
                                      .organizationSubSubjectData[index]
                                      .description,
                                  imageUrl: state
                                      .organizationSubSubjectData[index]
                                      .imageStore,
                                );
                              },
                            )
                          : const SizedBox();
                }),
          ),
        ),
      ],
    ));
  }
}
