import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSideBarLineWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CustomSideBarLineWidget(
      {super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        decoration: isSelected ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
