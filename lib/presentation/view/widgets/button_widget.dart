import 'package:edu_crm/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final bool buttonWithLeftIcon;
  final bool buttonWithRightIcon;
  final Color containerColor;
  final Color textColor;
  final bool isBorder;
  final bool isColored;
  final bool onlyIcon;
  final bool isDisabled;
  final String text;
  //paddings
  final double verticalPadding;
  final double horizontalPadding;
  const ButtonWidget({
    super.key,
    this.buttonWithLeftIcon = false,
    this.buttonWithRightIcon = false,
    this.containerColor = Colors.black,
    this.isBorder = false,
    this.isColored = false,
    this.text = "",
    this.textColor = Colors.white,
    required this.verticalPadding,
    required this.horizontalPadding,
    this.onlyIcon = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: verticalPadding,
        bottom: verticalPadding,
        left: buttonWithLeftIcon ? horizontalPadding - 4 : horizontalPadding,
        right: buttonWithRightIcon ? horizontalPadding - 4 : horizontalPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isDisabled
            ? const Color(0xFFE2E8F0)
            : isBorder
                ? Colors.transparent
                : containerColor,
        border: Border.all(
          color: isDisabled
              ? const Color(0xFFE2E8F0)
              : isBorder
                  ? const Color(0xFFE2E8F0)
                  : containerColor,
        ),
      ),
      child: onlyIcon
          ? Image.asset(
              "images/add.png",
              width: 20,
              height: 20,
              color: isDisabled
                  ? const Color(0xFFE2E8F0)
                  : isBorder
                      ? containerColor
                      : Colors.white,
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonWithLeftIcon
                    ? Image.asset(
                        "images/add.png",
                        width: 20,
                        height: 20,
                        color: isDisabled
                            ? const Color(0xFFB4BFCD)
                            : isBorder
                                ? containerColor
                                : Colors.white,
                      )
                    : const SizedBox(),
                Text(
                  text,
                  style: GoogleFonts.inter(
                    color: isDisabled
                        ? const Color(0xFFB4BFCD)
                        : isBorder
                            ? containerColor
                            : Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                buttonWithRightIcon
                    ? Image.asset(
                        "images/add.png",
                        width: 20,
                        height: 20,
                        color: isDisabled
                            ? const Color(0xFFB4BFCD)
                            : isBorder
                                ? containerColor
                                : Colors.white,
                      )
                    : const SizedBox(),
              ],
            ),
    );
  }
}
