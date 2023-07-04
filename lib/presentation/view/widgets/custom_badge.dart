import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBadge extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double textSize;
  final bool hasIcon;
  final String text;
  const CustomBadge({
    super.key,
    required this.color,
    required this.hasIcon,
    required this.text,
    required this.textColor,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon
                ? Image.asset(
                    "images/pensilk.png",
                    cacheHeight: 24,
                    cacheWidth: 24,
                    color: textColor,
                  )
                : const SizedBox(),
            hasIcon ? const SizedBox(width: 10) : const SizedBox(),
            Text(
              text,
              style: GoogleFonts.inter(
                color: textColor,
                fontSize: textSize,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
