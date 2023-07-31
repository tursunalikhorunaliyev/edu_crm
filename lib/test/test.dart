import 'package:edu_crm/presentation/view/widgets/side_bar_animated_button.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GoogleFonts",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Inter",
              ),
            ),
            Text(
              "GoogleFonts",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
