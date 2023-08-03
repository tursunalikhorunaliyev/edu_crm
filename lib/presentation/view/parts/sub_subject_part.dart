import 'package:edu_button/edu_button.dart';
import 'package:edu_crm/presentation/view/widgets/subject_card.dart';
import 'package:edu_crm/utils/app_const.dart';
import 'package:edu_selectable_part/edu_selectable_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SubSubjectPart extends StatelessWidget {
  SubSubjectPart({super.key});

  @override
  Widget build(BuildContext context) {
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
        EduSelectablePart(
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
              print(index);
            },
            elements: const [
              "Barchasi",
              "Dasturlash",
              "Matematika",
              "Ingliz tili",
              "Kompyuter savodxonligi",
            ]),
        const SizedBox(height: 12),
        Expanded(
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: MasonryGridView.builder(
              // padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              physics: const BouncingScrollPhysics(),
              crossAxisSpacing: 36,
              mainAxisSpacing: 16,
              itemCount: subgect.length,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              ),
              itemBuilder: (context, index) {
                return subgect[index];
              },
            ),
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
