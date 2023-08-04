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
                        onChanged: (index) {
                          log(index);
                        },
                        elements: tabElements +
                            state.organizationSubjectList
                                .map((e) => e.name)
                                .toList(),
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
                      : state is OrgSubSubjectAllDataState
                          ? MasonryGridView.builder(
                              // padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                              physics: const BouncingScrollPhysics(),
                              crossAxisSpacing: 36,
                              mainAxisSpacing: 16,
                              itemCount:
                                  state.organizationAllSubDataModel.length,
                              gridDelegate:
                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                              ),
                              itemBuilder: (context, index) {
                                debugPrint(state
                                    .organizationAllSubDataModel[index]
                                    .imageStore);
                                return SubjectCard(
                                  width: 300 / 1.2,
                                  text: state.organizationAllSubDataModel[index]
                                      .subject.name,
                                  longText: state
                                      .organizationAllSubDataModel[index]
                                      .description,
                                  imageUrl: state
                                      .organizationAllSubDataModel[index]
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

  final List<SubjectCard> subgect = [
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText: "osmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText: "osmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText: "osmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText: "osmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText:
          "osmaomsaomsoams,ossaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText:
          "osmaomsaomsoams,ossaomsoapjskldfjognjsioj;dhfgiohsodhfgiuhsiuhdfuihsiudhfgiuhsdiufhgiusdhfgiuhsdfiughiusdhfgiuhsdiufhgiusdhfiughsdiufhgiuhsdfighsiudhfgiushdfiughsiduhfgiushdfiughsdiuhfguishdfiughsiuhdfgiushdfiughsiuhfdgiuhsdfiughsihdfgiuhsdfiughsiduhfgihsdiughisdhfgiuhsdfiughsidufhmsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText: "osmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
    const SubjectCard(
      width: 300 / 1.2,
      text: "Salom",
      longText: "osmaomsaomsoams",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
    ),
  ];
}
