import 'package:edu_crm/presentation/view/widgets/side_bar_animated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "GoogleFonts",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
              ),
            ),
            Text(
              "GoogleFonts",
              style: GoogleFonts.inter(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
