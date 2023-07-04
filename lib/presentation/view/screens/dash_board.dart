import 'package:edu_crm/presentation/view/widgets/side_bar_widget.dart';
import 'package:edu_crm/presentation/view/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 300,
            child: SideBarWidget(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 100,
                  child: TopBar(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 39.0),
                  child: Column(
                    children: [
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
                                "assets/images/add_plus.png",
                                cacheHeight: 24,
                                cacheWidth: 24,
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
