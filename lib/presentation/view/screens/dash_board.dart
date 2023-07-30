import 'package:edu_crm/presentation/view/widgets/path_widget.dart';
import 'package:edu_crm/presentation/view/widgets/side_bar_widget.dart';
import 'package:edu_crm/presentation/view/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:edu_selectable_part/edu_selectable_part.dart';
import 'package:edu_crm/presentation/view/widgets/subject_card.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 260,
            height: double.infinity,
            child: SideBarWidget(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.white,
                  height: 100 / 1.5,
                  child: const TopBar(),
                ),
                const SizedBox(
                  height: 30 / 1.5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 39.0 / 1.5, left: 30 / 1.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 25 / 1.5,
                        child: PathWidget(
                          elements: ["salom", "alik", "sapasalom"],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fan va yo'nalishlar",
                            style: GoogleFonts.inter(
                              color: const Color(0xFF1E293B),
                              fontSize: 24 / 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 230 / 1.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color(0xFF5D5FEF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16 / 1.5,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 6.5),
                                  Image.asset(
                                    "images/add.png",
                                    width: 24 / 1.5,
                                    height: 24 / 1.5,
                                  ),
                                  Text(
                                    " Yangi yonalish qo'shish",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 15.07 / 1.4,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                        ),
                        height: 20,
                        textStyle: const TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14,
                          color: Color(0xFF4D515A),
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
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SubjectCard(
                            width: 300 / 1.2,
                            text: "Salom",
                            longText:
                                "osmaomsaomsoams,ossaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoams",
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: SubjectCard(
                              width: 300 / 1.2,
                              text: "Salom",
                              longText:
                                  "osmaomsaomsoams,ossaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoams",
                              imageUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
                            ),
                          ),
                          SubjectCard(
                            width: 300 / 1.2,
                            text: "Salom",
                            longText:
                                "osmaomsaomsoams,ossaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoams",
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
