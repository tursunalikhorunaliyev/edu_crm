import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final bool buttonWithLeftIcon;
  final bool buttonWithRightIcon;
  const ButtonWidget({
    super.key,
    this.buttonWithLeftIcon = false,
    this.buttonWithRightIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: buttonWithLeftIcon
          ? const EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 12)
          : buttonWithRightIcon
              ? const EdgeInsets.only(top: 12, bottom: 12, right: 8, left: 12)
              : const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: buttonColor1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonWithLeftIcon
              ? Image.asset(
                  "images/add_plus.png",
                  width: 24,
                  height: 24,
                )
              : const SizedBox(),
          Text(
            "Button",
            style: GoogleFonts.inter(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          buttonWithRightIcon
              ? Image.asset(
                  "images/add_plus.png",
                  width: 24,
                  height: 24,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
