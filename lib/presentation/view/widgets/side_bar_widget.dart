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
                    "icon1.png",
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
            const TextPlusWidget(
              text: "PAGES",
              iconPath: "Plus.png",
            )
          ],
        ),
      ),
    );
  }
}
