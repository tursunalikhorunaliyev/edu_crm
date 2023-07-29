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
            width: 300,
            height: double.infinity,
            child: SideBarWidget(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  color: Colors.white,
                  height: 70,
                  child: const TopBar(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 39.0, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 25,
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
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: const Color(0xFF5D5FEF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 6.5),
                                  Image.asset(
                                    "images/add.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                  Text(
                                    " Yangi yonalish qo'shish",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 15.07,
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
                      EduSelectablepart(
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
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height - 261,
                        child: GridView.builder(
                          itemCount: 20,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 43,
                            mainAxisSpacing: 24,
                          ),
                          itemBuilder: (context, index) {
                            return SubjectCard(
                              width: 200,
                              text: "Salom",
                              longText: index == 0
                                  ? "osmaomsaomsoams,ossaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoamsosmaomsaomsoams"
                                  : "salom",
                              imageUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNEpumaLHG_9MBK4kqBtB5OPyQX7hLnuaKZQ&usqp=CAU",
                            );
                          },
                        ),
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
