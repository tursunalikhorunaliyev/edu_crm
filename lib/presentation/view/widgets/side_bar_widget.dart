import 'package:edu_crm/presentation/view/widgets/side_bar_line_widget.dart';
import 'package:edu_crm/presentation/view/widgets/text_plus_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 28,
                  height: 28,
                  child: Image.asset(
                    "images/icon1.png",
                    width: 28,
                    height: 28,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "REduse",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 51,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 17),
              child: TextPlusWidget(
                text: "PAGES",
                iconPath: "Plus.png",
              ),
            ),
            const SizedBox(height: 11),
            const SidebarLineWidget(
              firstIcon: "graph.png",
              text: "Dashboard",
            ),
            const SizedBox(height: 11),
            const SidebarLineWidget(
              firstIcon: "chart-square.png",
              text: "Analytics",
              isNew: true,
            ),
          ],
        ),
      ),
    );
  }
}
